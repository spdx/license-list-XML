TOOL_VERSION = 2.1.12
TEST_DATA = test/simpleTestForGenerator
GIT_USERNAME="License Publisher (maintained by Gary O'Neall)"
GIT_EMAIL="gary@sourceauditor.com"
LICENSE_DATA_REPO="https://github.com/goneall/license-list-data.git"
LICENSE_DATA_REPO_NO_SCHEME="$(LICENSE_DATA_REPO#*://)"
LICENSE_DATA_URL="https://$(GITHUB_TOKEN)@$(LICENSE_DATA_REPO_NO_SCHEME)"
VERSION=$(git describe --always || echo 'UNKNOWN')
RELEASE_DATE=$(date -I)
#TODO Change the license data repo to license-list-xml before merging pull request

.PHONY: deploy-license-data
deploy-license-data: spdx-tools-$(TOOL_VERSION).jar-valid resources/licenses-full.json $(TEST_DATA) .tmp	
	cd .tmp
	git clone $(LICENSE_DATA_URL) $(LICENSE_OUTPUT_DIR) --quiet --depth 1
	# Clean out the old data directories
	rm -r html
	rm -r json
	rm -r rdfa
	rm -r rdfnt
	rm -r rdfturtle
	rm -r rdfxml
	rm -r template
	rm -r text
	rm -r website
	rm licenses.md
	java -jar -DLocalFsfFreeJson=true -DlistedLicenseSchema="../schema/ListedLicense.xsd" ../spdx-tools-$(TOOL_VERSION).jar LicenseRDFAGenerator ../src ./ $VERSION $RELEASE_DATE ../$(TEST_DATA) ../expected-warnings
	# Configure git
	git config user.email "$(GIT_EMAIL)"
	git config user.name "$(GIT_USERNAME)"
	# Commit and push the changes back to the license data repository
	# Create the push URL including the authentication token
	git add -A
	COMMIT_MSG="Automatic update of license list data from license XML repository version $VERSION"
	git commit -m "$(COMMIT_MSG)"
	echo Pushing updates to the license list data repository.  This could take a while...
	git push origin --quiet
	
.PHONY: release-license-data
release-license-data: deploy-license-data
	if [[ $VERSION =~ .+-g[a-f0-9]{7} ]]
	then
		echo Can not release license data - license list version '$VERSION' does not match a release pattern
		exit 1
	else
		git tag -a $(VERSION) -m "Adding release mathing the license list XML tag $VERSION"
		git push origin --tags --quiet
	fi
	
.PHONY: validate-canonical-match
validate-canonical-match: licenseListPublisher-$(TOOL_VERSION).jar-valid resources/licenses-full.json $(TEST_DATA) .tmp
	java -jar -DLocalFsfFreeJson=true -DlistedLicenseSchema="schema/ListedLicense.xsd" licenseListPublisher-$(TOOL_VERSION).jar LicenseRDFAGenerator src .tmp 1.0 2000-01-01 $(TEST_DATA) expected-warnings

.PRECIOUS: licenseListPublisher-%.jar
licenseListPublisher-%.jar:
	curl -L https://dl.bintray.com/spdx/spdx-tools/org/spdx/licenseListPublisher/$*/licenseListPublisher-$*-jar-with-dependencies.jar >$@

.PRECIOUS: licenseListPublisher-%.jar.asc
licenseListPublisher-%.jar.asc:
	curl -L https://dl.bintray.com/spdx/spdx-tools/org/spdx/licenseListPublisher/$*/licenseListPublisher-$*-jar-with-dependencies.jar.asc >$@

.PHONY: licenseListPublisher-%.jar-valid
licenseListPublisher-%.jar-valid: licenseListPublisher-%.jar.asc licenseListPublisher-%.jar goneall.gpg
	gpg --verify --no-default-keyring --keyring ./goneall.gpg $<

.tmp:
	mkdir -p $@

resources/licenses-full.json: resources
	echo '{}' >$@

resources:
	mkdir -p $@

.PHONY: clean
clean:
	rm -rf .tmp

.PHONY: full-clean
full-clean: clean
	rm -rf resources licenseListPublisher-*.jar*

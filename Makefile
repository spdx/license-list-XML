TOOL_VERSION = 2.1.12
TEST_DATA = test/simpleTestForGenerator
GIT_USERNAME=License Publisher (maintained by Gary O'Neall)
GIT_EMAIL=gary@sourceauditor.com
LICENSE_DATA_REPO=https://github.com/goneall/license-list-data.git
LICENSE_DATA_REPO_NO_SCHEME=github.com/goneall/license-list-data.git
LICENSE_DATA_URL=https://$(GITHUB_TOKEN)@$(LICENSE_DATA_REPO_NO_SCHEME)
LICENSE_OUTPUT_DIR=.tmp
VERSION=$(shell git describe --always || echo 'UNKNOWN')
RELEASE_DATE=$(shell date -I)
COMMIT_MSG="Automatic update of license list data from license XML repository version $(VERSION)"
#TODO Change the license data repo to license-list-xml before merging pull request
	
.PHONY: validate-canonical-match
validate-canonical-match: licenseListPublisher-$(TOOL_VERSION).jar-valid resources/licenses-full.json $(TEST_DATA) .tmp
	java -jar -DLocalFsfFreeJson=false -DlistedLicenseSchema="schema/ListedLicense.xsd" licenseListPublisher-$(TOOL_VERSION).jar LicenseRDFAGenerator src .tmp 1.0 2000-01-01 $(TEST_DATA) expected-warnings

.PHONY: deploy-license-data
deploy-license-data: licenseListPublisher-$(TOOL_VERSION).jar-valid resources/licenses-full.json $(TEST_DATA) .tmp	
	git clone $(LICENSE_DATA_URL) $(LICENSE_OUTPUT_DIR) --quiet --depth 1
	# Clean out the old data directories
	rm -r .tmp/html
	rm -r .tmp/json
	rm -r .tmp/jsonld
	rm -r .tmp/rdfa
	rm -r .tmp/rdfnt
	rm -r .tmp/rdfturtle7527de0395b76cb393e3678c4d942c848311f5cd
	rm -r .tmp/rdfxml
	rm -r .tmp/template
	rm -r .tmp/text
	rm -r .tmp/website
	rm .tmp/licenses.md
	java -jar -DLocalFsfFreeJson=false -DlistedLicenseSchema="schema/ListedLicense.xsd" licenseListPublisher-$(TOOL_VERSION).jar LicenseRDFAGenerator src .tmp $(VERSION) $(RELEASE_DATE) $(TEST_DATA) expected-warnings
	
	echo $COMMIT_MSG
	cd .tmp && \
	pwd && \
	git config user.email "$(GIT_EMAIL)" && \
	git config user.name "$(GIT_USERNAME)" && \
	git add -A && \
	git commit -m $(COMMIT_MSG) && \
	echo Pushing updates to the license list data repository.  This could take a while... && \
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

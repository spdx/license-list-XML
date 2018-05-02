TOOL_VERSION = 2.1.12
TEST_DATA = test/simpleTestForGenerator

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

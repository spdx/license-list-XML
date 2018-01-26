TOOL_VERSION = 2.1.10
TEST_DATA = test/simpleTestForGenerator

.PHONY: validate-canonical-match
validate-canonical-match: spdx-tools-$(TOOL_VERSION).jar-valid resources/licenses-full.json $(TEST_DATA) .tmp
	java -jar -DLocalFsfFreeJson=true -DlistedLicenseSchema="schema/ListedLicense.xsd" spdx-tools-$(TOOL_VERSION).jar LicenseRDFAGenerator src .tmp 1.0 2000-01-01 $(TEST_DATA) expected-warnings

.PRECIOUS: spdx-tools-%.jar
spdx-tools-%.jar:
	curl -L https://dl.bintray.com/spdx/spdx-tools/org/spdx/spdx-tools/$*/spdx-tools-$*-jar-with-dependencies.jar >$@

.PRECIOUS: spdx-tools-%.jar.asc
spdx-tools-%.jar.asc:
	curl -L https://dl.bintray.com/spdx/spdx-tools/org/spdx/spdx-tools/$*/spdx-tools-$*-jar-with-dependencies.jar.asc >$@

.PHONY: spdx-tools-%.jar-valid
spdx-tools-%.jar-valid: spdx-tools-%.jar.asc spdx-tools-%.jar goneall.gpg
	gpg --verify --no-default-keyring --keyring ./goneall.gpg $<

.tmp:
	mkdir -p $@

resources/licenses-full.json: resources
	echo '{}' >$@
# the 2.1.9 tools choke on the current live version.
# https://github.com/wking/fsf-api/pull/9
# https://github.com/wking/fsf-api/pull/10

resources:
	mkdir -p $@

.PHONY: clean
clean:
	rm -rf .tmp

.PHONY: full-clean
full-clean: clean
	rm -rf resources spdx-tool-*.jar*

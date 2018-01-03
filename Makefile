TOOL_VERSION = 2.1.8
TEST_DATA = ../license-test-files

.PHONY: validate-canonical-match
validate-canonical-match: spdx-tools-$(TOOL_VERSION).jar-valid resources/licenses-full.json $(TEST_DATA) .tmp
	java -jar spdx-tools-$(TOOL_VERSION).jar LicenseRDFAGenerator . .tmp 1.0 2000-01-01 $(TEST_DATA) expected-warnings

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
	curl -L https://wking.github.io/fsf-api/licenses-full.json >$@

resources:
	mkdir -p $@

.PHONY: clean
clean:
	rm -rf .tmp

.PHONY: full-clean
full-clean: clean
	rm -rf resources spdx-tool-*.jar*

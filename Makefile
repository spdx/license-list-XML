TOOL_VERSION = 2.1.8
TOOL_SHA256 = 4871a3f72cd87f5680da4dbda8fbc7805f365b599c8fbfd8f9d9e371b3a2d3b8
TEST_DATA = ../license-test-files

.PHONY: validate-canonical-match
validate-canonical-match: spdx-tools-$(TOOL_VERSION).jar-valid resources/licenses-full.json $(TEST_DATA) .tmp
	java -jar spdx-tools-$(TOOL_VERSION).jar LicenseRDFAGenerator . .tmp 1.0 2000-01-01 $(TEST_DATA) expected-warnings

.PRECIOUS: spdx-tools-%.jar
spdx-tools-%.jar:
	curl -L https://dl.bintray.com/spdx/spdx-tools/org/spdx/spdx-tools/$*/spdx-tools-$*-jar-with-dependencies.jar >$@

.PHONY: spdx-tools-%.jar-valid
spdx-tools-%.jar-valid: spdx-tools-%.jar
	echo '$(TOOL_SHA256) $<' | sha256sum --check

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
	rm -rf resources spdx-tool-*.jar

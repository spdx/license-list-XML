# SPDX License List Source
The [SPDX License List](https://spdx.org/licenses/) is a list of common open-source licenses (and associated [exceptions](https://spdx.org/licenses/exceptions-index.html)) used to easily and efficiently identify such licenses in SPDX documents, SPDX identifiers (e.g. in source code), package managers, and elsewhere.
This repository contains the XML source and schema files used to generate the authoritative, supported SPDX list file formats. 

# This Repository Is Unstable
The XML format for the SPDX source files is currently unstable, so any direct consumers of _this_ repository's source files should expect occasional, backwards-incompatible changes. In contrast, the output files in the [SPDX license-list-data repository](https://github.com/spdx/license-list-data) are stable and well-supported, and make the License List available in RDFa, HTML, text, and JSON formats. You can use [SPDX tools](https://github.com/spdx/tools) (or create your own) to consume the supported formats of the license list.

# Requesting a New License for the SPDX License List
To request a license be added to the SPDX License List, create a [new issue](https://github.com/spdx/license-list-XML/issues/new) in this repository with the following information (or submit an email containing this information to the [SPDX Legal Team](https://spdx.org/legal-team) at spdx-legal --AT-- lists.spdx --DOT-- org and we will create an issue for you):
* Proposed Full Name for the license or exception
* Proposed Short Identifier
* Functioning URL reference to the license or exception text, either from the license author or a community recognized source
* Create and attach a text file with the license or exception text from the url provided above. Please proofread the text file to ensure that:
  * Information has not been lost or modified
  * Formatting is clean and consistent with the license or exception URL
* Indicate whether the license is [OSI-approved](https://opensource.org/licenses/alphabetical) or whether it has been submitted for approval to the OSI and is currently under review
* Indicate whether the license is FSF Free/Libre or whether it has been submitted for approval to FSF and is currently under review
* Provide a short explanation regarding the need for this license or exception to be included on the SPDX License List, including identifying at least one program that uses this license

# SPDX License List Source Files
The [SPDX License List](https://spdx.org/licenses/) is a list of common open-source licenses (and associated exceptions) used to easily and efficiently identify such licenses in SPDX documents, SPDX identifiers (e.g. in source code), package managers, or elsewhere.
This repository contains the XML "source" files (and schema) used to generate the authoritative, supported SPDX list file formats. 

# This Repo: Not Stable or Authoritative
The XML format for the SPDX source files is not necessarily stable and the files in this repository should not be used by tools. The output files in the [license-list-data repository](https://github.com/spdx/license-list-data) are, however, are stable and well-supported. They are available in RDFa, HTML, text, and JSON formats. You can use [SPDX tools](https://github.com/spdx/tools) (or create your own tools) to consume the supported formats of the license list.

# Requesting a new license for the SPDX License List
To request a license be added to the SPDX License List, create a [new issue](https://github.com/spdx/license-list-XML/issues/new) in this repository with the following information (or submit an email to the [SPDX Legal Team](https://spdx.org/legal-team) at spdx-legal@lists.spdx.org and we will create an issue for you):
* Proposed Full Name for the license or exception
* Proposed Short Identifier
* Functioning URL reference to the license or exception text, either from the license author or a community recognized source
* Create and attach a text file with the license or exception text from the url provided above. Please proofread the text file to ensure that:
  * Information has not been lost or modified
  * Formatting is clean and consistent with the license or exception URL
* Indicate whether the license is [OSI-approved](https://opensource.org/licenses/alphabetical) or whether it has been submitted for approval to the OSI and is currently under review
* Provide a short explanation regarding the need for this license or exception to be included on the SPDX License List, including identifying at least one program that uses this license

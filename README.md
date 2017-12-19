# SPDX License List
The SPDX License List is a list of common open-source licenses (and associated exceptions) used to easily and efficiently identify such licenses in SPDX documents, SPDX identifiers (e.g. in source code), package managers, or elsewhere.
This repository contains the files on the [SPDX License List](https://spdx.org/licenses/), in varying formats, as well as the source files (and schema) used to generate the several file formats.





You can use [SPDX tools](https://To-Do) (or create your own tools) to consume the official formats of the License List: RDFa, HTML, Text, and JSON. Note that the XML _source_ files are not necessarily stable. The output files, however, contain stable content in stable, well-defined stable formats, so you should rely on them, and not the XML.




To request a license be added to the SPDX License List, create a new issue in this repository with the following information:
* Proposed Full Name for the license or exception
* Proposed Short Identifier
* Functioning URL reference to the license or exception text, either from the license author or a community recognized source
* Create and attach a text file with the license or exception text from the url provided above. Please proofread the text file to ensure that:
  * Information has not been lost or modified
  * Formatting is clean and consistent with the license or exception URL
* Indicate whether the license is OSI-approved (see: http://www.opensource.org/licenses/alphabetical) or whether it has been submitted for approval to the OSI and is currently under review
* Provide a short explanation regarding the need for this license or exception to be included on the SPDX License List, including identifying at least one program that uses this license

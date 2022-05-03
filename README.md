[![.github/workflows/deploy.yaml](https://github.com/spdx/license-list-XML/actions/workflows/deploy.yaml/badge.svg)](https://github.com/spdx/license-list-XML/actions/workflows/deploy.yaml)[![.github/workflows/validate.yaml](https://github.com/spdx/license-list-XML/actions/workflows/validate.yaml/badge.svg)](https://github.com/spdx/license-list-XML/actions/workflows/validate.yaml)
# SPDX License List
## What
The [SPDX License List](https://spdx.org/licenses/) is an integral part of the SPDX Specification. The SPDX License List itself is a list of commonly found licenses and exceptions used in free and open or collaborative software, data, hardware, or documentation. The purpose of the SPDX License List is to enable easy and efficient identification of such licenses and exceptions in an SPDX document, in source files or elsewhere. The SPDX License List includes a standardized short identifier, full name, vetted license text including matching guidelines markup as appropriate, and a canonical permanent URL for each license and exception.

## Why
The purpose of the SPDX License List is to enable efficient and reliable identification of such licenses and exceptions in an SPDX document, in source files or elsewhere. The SPDX short identifiers combined with the matching guidelines ensures that anyone can reliably know exactly what license text is being referred to for a given SPDX identifier.

## How
* For more about how SPDX license identifiers are used in an SPDX document, a software bill of materials, or other places that store license data, see [SPDX Specification](https://spdx.org/specifications), Sections 3, 4, and 6 and Appendices II, IV, and V.
* For examples of use of SPDX license identifiers in source code, see https://spdx.org/ids.
Please note, a license not on the SPDX License List can be included in an SPDX document by using a 'LicenseRef-' as the license name’s prefix and including the full license text as per the specification. 

## When 
* SPDX License List releases are done on a quarterly basis (more or less) at the end of January, April, July, and October. We schedule our License List releases one month behind the usual quarterly calendar cadence to accommodate the reality that many people contributing have other commitments at quarter-end.
* See https://github.com/spdx/license-list-XML/blob/master/RELEASE-NOTES.md for a summary of each release
* All PRs to be included as part of release must be merged 1 week prior to release date to allow time for actual release work
* Any new issues raised within the month of the next release will likely be tagged for the following release, unless it is an easy-to-resolve issue

# This Repository
This repository contains the XML source and schema files used to generate the authoritative, supported SPDX list file formats, including the web pages you see at [spdx.org/licenses](https://spdx.org/licenses/) and other generated data formats found in the [SPDX license-list-data repository](https://github.com/spdx/license-list-data).

# How to contribute/participate
We welcome participants and contributions! The SPDX License List is maintained by the SPDX Legal Team. Work and discussion is primarily done via:
* **mailing list**: Please introduce yourself and let us know a bit about your interest in SPDX! The mailing list is our traditional form of communication. To join the SPDX Legal Team mailing list, send an email to `Spdx-legal+subscribe@lists.spdx.org` or visit https://lists.spdx.org/g/Spdx-legal (where you can also see the list's archives).
* **fortnightly calls**: We use fortnightly conference calls to make decisions on topics and issues that may be difficult to discuss only via email or GitHub. These calls are every other Thursday at 12:00 US Eastern Time. Information, including a link to join online, is sent prior to the calls to the SPDX Legal Team mailing list. Meeting minutes for the calls are in the [SPDX meetings repo](https://github.com/spdx/meetings/tree/master/legal); minutes from meetings before March 2020 can be found at http://wiki.spdx.org/
* **this GitHub repo**: We use this repository for comments, issues and pull requests related to specific changes to the files that comprise the SPDX License List. This includes new licenses, updates to an existing license, improvements to documentation and other changes.

Please see [CONTRIBUTING.md](https://github.com/spdx/license-list-XML/blob/master/CONTRIBUTING.md) for more information.

# Consuming License Data from this Repository
Output files in the [SPDX license-list-data repository](https://github.com/spdx/license-list-data) are generated from the XML source in this repository.  These output files are stable and well-supported, and make the License List available in RDFa, HTML, text, and JSON formats. You can use [SPDX tools](https://github.com/spdx/tools) (or create your own) to consume the supported formats of the license list.

Please note that the XML format for this repository is internal to the SPDX legal team and is subject to change, so any direct consumers of _this_ repository's source files should expect occasional, backwards-incompatible changes.

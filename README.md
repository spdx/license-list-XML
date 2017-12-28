# SPDX License List
The [SPDX License List](https://spdx.org/licenses/) is a list of commonly found licenses and exceptions used in free and open source and other collaborative software or documentation. The purpose of the SPDX License List is to enable easy and efficient identification of such licenses and exceptions in an SPDX document, in source files or elsewhere. The SPDX License List includes a standardized short identifier, full name, vetted license text including matching guidelines markup as appropriate, and a canonical permanent URL for each license and exception.

# This Repository
This repository contains the XML source and schema files used to generate the authoritative, supported SPDX list file formats, including the web pages you see at [spdx.org/licenses](https://spdx.org/licenses/) and other generated data formats found in the [SPDX license-list-data repository](https://github.com/spdx/license-list-data). 

## This Repository Is Unstable
Please note that the format for this repository is internal to the SPDX legal team and is subject to change. Specifically, the XML format for the SPDX source files here is currently unstable, so any direct consumers of _this_ repository's source files should expect occasional, backwards-incompatible changes.

In contrast, the output files in the [SPDX license-list-data repository](https://github.com/spdx/license-list-data) are stable and well-supported, and make the License List available in RDFa, HTML, text, and JSON formats. You can use [SPDX tools](https://github.com/spdx/tools) (or create your own) to consume the supported formats of the license list.

# How to contribute/participate
The SPDX License List is maintained by the SPDX Legal Team. Work and discussion is primarily done both via the mailing list and bi-weekly calls. In particular, the bi-weekly calls are used to discuss topics and issues that may be difficult to only discuss via email.

You can join the mailing list and otherwise manage your subscription [via spdx-legal mailman](https://lists.spdx.org/mailman/listinfo/spdx-legal). Information on the bi-weekly calls and the working area for the SPDX Legal Team, can be found on the [SPDX wiki](https://wiki.spdx.org/view/Legal_Team)

For specific guidance on contributing to the SPDX License List via this repository, including how to request a new license or exception be added, please see [CONTRIBUTING](...blob/master/CONTRIBUTING.md).

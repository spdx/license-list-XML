[![Build Status](https://api.travis-ci.org/spdx/license-list-XML.svg?branch=master)](https://travis-ci.org/spdx/license-list-XML)
# SPDX License List
The [SPDX License List](https://spdx.org/licenses/) is a list of commonly found licenses and exceptions used in free and open source and other collaborative software or documentation. The purpose of the SPDX License List is to enable easy and efficient identification of such licenses and exceptions in an SPDX document, in source files or elsewhere. The SPDX License List includes a standardized short identifier, full name, vetted license text including matching guidelines markup as appropriate, and a canonical permanent URL for each license and exception.

# This Repository
This repository contains the XML source and schema files used to generate the authoritative, supported SPDX list file formats, including the web pages you see at [spdx.org/licenses](https://spdx.org/licenses/) and other generated data formats found in the [SPDX license-list-data repository](https://github.com/spdx/license-list-data). 

## This Repository Is Unstable
Please note that the format for this repository is internal to the SPDX legal team and is subject to change. Specifically, the XML format for the SPDX source files here is currently unstable, so any direct consumers of _this_ repository's source files should expect occasional, backwards-incompatible changes.

In contrast, the output files in the [SPDX license-list-data repository](https://github.com/spdx/license-list-data) are stable and well-supported, and make the License List available in RDFa, HTML, text, and JSON formats. You can use [SPDX tools](https://github.com/spdx/tools) (or create your own) to consume the supported formats of the license list.

# How to contribute/participate 

We welcome contribution!  See [our contribution documentation](CONTRIBUTING.md) for details.
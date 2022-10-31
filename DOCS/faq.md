<span id="top"> </span>

The SPDX License List
=====================

# <span id="what"></span>What is the SPDX License List?

The SPDX License List is an integral part of the SPDX Specification. The
SPDX License List itself is a list of commonly found licenses and
exceptions used in free and open or collaborative software, data,
hardware, or documentation. The SPDX License List includes a
standardized short identifier, the full name, the license text, and a
canonical permanent URL for each license and exception.

It is more than just a list, though. The SPDX License List incorporates
* [license inclusion principles](https://github.com/spdx/license-list-XML/blob/main/DOCS/license-inclusion-principles.md) 
regarding what is eligible for inclusion on the SPDX License List
* [matching guidelines](https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/) 
provide parameters as to what constitutes a match to a license or exception on the SPDX License List
* an [explanation of the fields](https://github.com/spdx/license-list-XML/blob/main/DOCS/license-fields.md) 
used in the SPDX License List
* [license expression syntax](LINK) 
enable expressing composite licensing scenarios, such as when more than one license applies, there is a choice of license, or an exception or additional terms apply to the license

The authoritative files for the SPDX License List are stored in XML source files 
in a [Github repo](https://github.com/spdx/license-list-XML). These files are 
used to generated the supported SPDX License List formats, including the 
web pages and other data formats found in [license-list-data repo](https://github.com/spdx/license-list-data).

There are also certain sections in the SPDX specification related to license information. 
It is helpful to understand the fields and purpose of these sections, even if you 
are not generating or consuming an SPDX document. 

## <span id="why"></span>Why does it exist?

The purpose of the SPDX License List is to enable efficient and reliable
identification of licenses and exceptions in an SPDX document, in
source files, or elsewhere. In an SPDX document, being able to refer to licenses via the short
form identifier lessens the SPDX file size and allows for unambiguous
license identification.

SPDX short identifiers have also proven to be useful in a similar way
outside of an SPDX document. For example, many open source projects use the short identifier 
in source files by putting the tag ".... at the top of each file. This provides an accurate, concise, and
machine-readable way to signal the license for each source code
file. For more information on this use and examples, see [Annex E of
the SPDX
Specification](https://spdx.github.io/spdx-spec/v2.3/using-SPDX-short-identifiers-in-source-files/).

## What is an “exception”?
An “exception” on the SPDX License List is text that is not a stand-alone license, but grants an exception to a license condition or additional permissions beyond those granted in the license is modifies.

## <span id="exception"></span>Where are license exceptions? Why are they listed separately?
 
In 2015, SPDX 2.0 introduced the concept of license expressions and moved the license
exceptions to a sub-list, in order to accommodate a more realistic
combination of licenses and exceptions. For ease of finding, [license exceptions are listed on their own
page](https://spdx.org/licenses/exceptions-index.html). Exceptions are to be used with
the WITH operator. For more information about license expressions, see
[Annex D of the SPDX
Specification](https://spdx.github.io/spdx-spec/v2.3/SPDX-license-expressions/).

## How do I know what license or exception corresponds to a short identifier?
The SPDX License List also includes a set of [license matching
guidelines](https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/)
that define what is a match and to ensure that the license identifiers are used in a consistent and
reliable way. 

## Does the license text need to be exactly the same as the text at spdx.org in order to apply the SPDX short identifier correctly?
 There are some non-substantive variations formally allowed, unique to each license. For example, capitalization, white space, and use of different bullets or numbering would not be considered a different license. Another example is if the license text includes the name of the author or a generic "author", this is not considered a legally substantive difference to the license terms themselves, and can be considered the same license. Such text is denoted with special tags in the XML file and denoted by red text on the webpages.  
 
See the matching guidelines at Annex B License matching guidelines and templates (Informative) of the Specification for details.

# What is the criteria for a license to be included on the SPDX License List?

The guidlines include a list of factors, some of which are more important than others. You should read the guidelines in full, but some of the key factors include: use of the license on significant projects: the license free and open, or if not, does it make the source code available; the license text is understandable and stable (i.e., it is not in the midst of drafting). For more information on how inclusion guidelines for the SPDX License List have evolved over time, see https://github.com/spdx/license-list-XML/blob/main/DOCS/license-inclusion-principles.md#historical-background.


## Who decides what is included on the SPDX License list?
The SPDX contributors who participate in the project as part of the SPDX-legal team apply a set of license inclusion guidelines when determining whether a license may be included in the SPDX License List. Anyone can weigh in as to whether they think a license or exception should be included, but factors that are not relevant to the license inclusion guidelines will not be persuasive.  

## Who is SPDX-legal?

The SPDX project is comprised of various teams who focus on different aspects of the overall project.  The SPDX-legal team is comprised of lawyers, project managers, engineers, developers, and other people interested in licensing issues. Anyone is welcome and we aim to be a friendly group!

The SPDX-legal team leads are listed here: https://spdx.dev/about/governance/

# <span id="request"></span>How do I request adding a license to the SPDX License List?

Follow the instructions here:
https://github.com/spdx/license-list-XML/blob/main/DOCS/request-new-license.md


## How does one handle licenses not found in the SPDX License List?

When a license identified in the software package is not found in the
list of approved SPDX licenses, one can define a new license label, using `LicenseRef-<name>`..This is explained in [Clause 10 of the SPDX Specification](https://spdx.github.io/spdx-spec/v2.3/other-licensing-information-detected/).


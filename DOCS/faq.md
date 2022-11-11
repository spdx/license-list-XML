Tip: use the table of contents icon in the upper left hand corner of this window to see a list of FAQs

The SPDX License List
=====================

# What is the SPDX License List?
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
used to generate the supported SPDX License List formats, including the 
web pages and other data formats found in [license-list-data repo](https://github.com/spdx/license-list-data).

There are also certain sections in the SPDX specification related to license information. 
It is helpful to understand the fields and purpose of these sections, even if you 
are not generating or consuming an SPDX document. 

## Why does it exist?
The purpose of the SPDX License List is to enable efficient and reliable
identification of licenses and exceptions in an SPDX document, in
source files, or elsewhere. In an SPDX document, being able to refer to licenses via the short
form identifier lessens the SPDX file size and allows for unambiguous
license identification.

SPDX short identifiers have also proven to be useful in a similar way
outside of an SPDX document. For example, many open source projects use the short identifier 
in source files by putting the tag `SPDX-License-Identifier:` at the top of each file. This provides an accurate, concise, and
machine-readable way to signal the license for each source code
file. For more information on this use and examples, see [Annex E of
the SPDX
Specification](https://spdx.github.io/spdx-spec/v2.3/using-SPDX-short-identifiers-in-source-files/).

## What is an “exception”?
An “exception” on the SPDX License List is text that is not a stand-alone license, but grants an exception to a license condition or additional permissions beyond those granted in the license is modifies.

## Why are exceptions listed separately?
In 2015, SPDX 2.0 introduced the concept of license expressions and moved the license
exceptions to a sub-list, in order to accommodate a more realistic
combination of licenses and exceptions. For ease of finding, [license exceptions are listed on their own
page](https://spdx.org/licenses/exceptions-index.html). Exceptions are to be used with
the WITH operator. For more information about license expressions, see
[Annex D of the SPDX
Specification](https://spdx.github.io/spdx-spec/v2.3/SPDX-license-expressions/).

## What are these "matching guidelines" about?
The SPDX License List also includes a set of [license matching
guidelines](https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/)
that define what is a match and to ensure that the license identifiers are used in a consistent and
reliable way. 

## Does the license text need to be the same to use an SPDX short identifier?
There are some non-substantive variations formally allowed, unique to each license. For example, capitalization, white space, and use of different bullets or numbering would not be considered a different license. Another example is if the license text includes the name of the author or a generic "author", this is not considered a legally substantive difference to the license terms themselves, and can be considered the same license. Such text is denoted with special tags in the XML file and denoted by red text on the webpages.  
 
See the [matching guidelines](https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/) for details.

## What does the blue text and red text mean in the license list entry?
The license text on the HTML pages implement some easy-to-view aspects of the [matching guidelines](https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/) by displaying omitable text in blue and replaceable text in red.

# What is the criteria for inclusion on the SPDX License List?

The [license inclusion principles](https://github.com/spdx/license-list-XML/blob/main/DOCS/license-inclusion-principles.md) include a list of factors, some of which are more important than others. You should read the guidelines in full, but some of the key factors include: use of the license on significant projects: the license free and open, or if not, does it make the source code available; the license text is understandable and stable (i.e., it is not in the midst of drafting). For more information on how inclusion guidelines for the SPDX License List have evolved over time, see https://github.com/spdx/license-list-XML/blob/main/DOCS/license-inclusion-principles.md#historical-background.


## Who decides what is included on the SPDX License list?
The SPDX contributors who participate in the project as part of the SPDX-legal team apply a set of license inclusion guidelines when determining whether a license may be included in the SPDX License List. Anyone can weigh in as to whether they think a license or exception should be included, but factors that are not relevant to the license inclusion guidelines will not be persuasive.  

## Who is SPDX-legal?

The SPDX project is comprised of various teams who focus on different aspects of the overall project.  The SPDX-legal team is comprised of lawyers, project managers, engineers, developers, and other people interested in licensing issues. Anyone is welcome and we aim to be a friendly group!

The SPDX-legal team leads are listed here: https://spdx.dev/about/governance/

##  What does it mean when a license ID is "deprecated"?
A license identifier is "deprecated" when there is an updated license identifier and the deprecated license identifier. SPDX aims to not changes license identifiers, unless there is a compelling reason and is not a decision taken lightly. Deprecated license identifiers, while remaining valid, should no longer be used. The URL to each deprecated license is retained and those license pages are updated to note the deprecation. 

# How do I request adding a license to the SPDX License List?

Follow the instructions here:
https://github.com/spdx/license-list-XML/blob/main/DOCS/request-new-license.md


## How does one handle licenses not found in the SPDX License List?

When a license identified in the software package is not found in the
list of approved SPDX licenses, one can define a new license label, using `LicenseRef-<name>`..This is explained in [Clause 10 of the SPDX Specification](https://spdx.github.io/spdx-spec/v2.3/other-licensing-information-detected/).

# What are license expressions?
Sometimes a single license can be used to represent the licensing terms of a package or file, but there are situations where a single license identifier is not sufficient. [SPDX License Expressions](https://spdx.github.io/spdx-spec/v2.3/SPDX-license-expressions/) provide a way to construct more complex licensing scenarios. expressions. A license expression could be a single license identifier found on the SPDX License List; a user defined license reference denoted by the `LicenseRef-<idString>`; a license identifier combined with an SPDX exception; or some combination of license identifiers, license references and exceptions constructed using a small set of defined operators: `AND`, `OR`, `WITH` and `+`)   
 
## How does one represent a file or package that is licensed under a choice of two or more licenses?
A licensing choice can be represented by a license expression using
the `OR` operator. For example, a file that is disjunctively licensed
under either the GPL-2.0-only or MIT would be represented using the following
disjunctive expression: `GPL-2.0-only OR MIT`.

## How does one represent a file or package that is licensed under two or more licenses?

Conjunctive licensing can be represented via a license expression using
the 'AND' operator. For example, a file or package that is subject to the Apache-2.0,
MIT, and GPL-2.0-or-later would be represented using the following conjunctive
expression: `Apache-2.0 AND MIT AND GPL-2.0-or-later`
 
# How are license identifiers used in an SPDX Document?
The SPDX specification includes fields to record license information at the [package](https://spdx.github.io/spdx-spec/v2.3/package-information/), [file](https://spdx.github.io/spdx-spec/v2.3/file-information/), and [snippet](https://spdx.github.io/spdx-spec/v2.3/snippet-information/) level. 

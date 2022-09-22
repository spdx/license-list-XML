<span id="top"> </span>

The SPDX License List
=====================

# Table of Contents

- ### <a href="#background"> Background </a>
  - #### <a href="#what"> What is the SPDX License List? </a>
  - #### <a href="#why"> Why does it exist? </a>
  - #### <a href="#whynot"> Why are some licenses I’ve heard of included on the list and some not? </a>
- ### <a href="#id"> Identification </a>
  - #### <a href="#how"> How does one handle non-open source licenses or licenses not found in the SPDX License List? </a>
  - #### <a href="#why-two"> Why are there two different license fields for a package (Concluded License and Declared License)? </a>
  - #### <a href="#exception"> Where are license exceptions? Why are they listed separately? </a>
  - #### <a href="#or"> How does one represent a file or package that is disjunctively licensed (i.e., a license choice)? </a>
  - #### <a href="#multi"> How does one represent a file that is licensed under two or more licenses? </a>
- ### <a href="#add"> Adding a License </a>
  - #### <a href="#request"> How do I request adding a license to SPDX License List? </a>

<br>

---

<br>

## <span id="background"></span>Background

### <span id="what"></span>What is the SPDX License List?

The SPDX License List is an integral part of the SPDX Specification. The
SPDX License List itself is a list of commonly found licenses and
exceptions used in free and open or collaborative software, data,
hardware, or documentation. The SPDX License List includes a
standardized short identifier, the full name, the license text, and a
canonical permanent URL for each license and exception.

##### <a href="#top"> Back to Top</a>

<br>

### <span id="why"></span>Why does it exist?

The purpose of the SPDX License List is to enable efficient and reliable
identification of such licenses and exceptions in an SPDX document, in
source files or elsewhere. Being able to refer to licenses via the short
form identifier lessens the SPDX file size and allows for unambiguous
license identification.

SPDX short identifiers have also proven to be useful in a similar way
outside of an SPDX document. For example, many open source projects have
begun to use the short identifier as an accurate, concise, and
machine-readable way to signal the license for each source code
file. For more information on this use and examples, see [Appendix V of
the SPDX
Specification](https://spdx.github.io/spdx-spec/appendix-V-using-SPDX-short-identifiers-in-source-files/).

The SPDX License List also includes a set of [license matching
guidelines](https://spdx.github.io/spdx-spec/appendix-II-license-matching-guidelines-and-templates/)
to ensure that the license identifiers are used in a consistent and
reliable way.

##### <a href="#top"> Back to Top</a>

<br>

## <span id="whynot"></span>Why are some licenses I’ve heard of included on the list and some not?

The primary purpose of the list is to provide a short form identifier
for common or popular open source software licenses. To create this
list, the SPDX legal workgroup included all the OSI approved licenses
and any other license members of the work group had experience with “in
the wild.” All versions (even if since deprecated) of these licenses
were also included. It was always contemplated that the list would grow
over time, so the initial goal was to provide a sensible starting point
such that the most commonly found licenses would have a short
identifier.

##### <a href="#top"> Back to Top</a>

<br>

## <span id="id"></span>Identification

### <span id="how"></span>How does one handle non-open source licenses or licenses not found in the SPDX License List?

When a license identified in the software package is not found in the
list of approved SPDX licenses, one can add the license text to the SPDX
file and define a new license label. That license identifier is defined
only for that specific SPDX document. This is explained in [Section 6 of
the SPDX
Specification](https://spdx.github.io/spdx-spec/6-other-licensing-information-detected/).

##### <a href="#top"> Back to Top</a>

<br>

### <span id="why-two"></span>Why are there two different license fields for a package (Concluded License and Declared License)?

The Concluded License field is the license the SPDX file creator
believes governs the package. The Declared License is the license that
the authors of a project “declare”. Often these fields have the same
value. When they are different the SPDX file creator should provide
background information in the Comments on License field. The files
section of the specification has analogous fields.

##### <a href="#top"> Back to Top</a>

<br>

### <span id="exception"></span>Where are license exceptions? Why are they listed separately?

For ease of finding, [license exceptions are listed on their own
page](https://spdx.org/licenses/exceptions-index.html). SPDX 2.0
introduced the concept of license expressions and moved the license
exceptions to a sub-list, in order to accommodate a more realistic
combination of licenses and exceptions. Exceptions are to be used with
the WITH operator. For more information about license expressions, see
[Appendix IV of the SPDX
Specification](https://spdx.github.io/spdx-spec/appendix-IV-SPDX-license-expressions/).

##### <a href="#top"> Back to Top</a>

<br>

### <span id="or"></span>How does one represent a file or package that is disjunctively licensed (i.e., a license choice)?

Disjunctive licensing can be represented via a license expression using
the OR operator. For example, a file that is disjunctively licensed
under either the GPL-2.0-only or MIT would be represented using the following
disjunctive expression: `GPL-2.0-only OR MIT`.

##### <a href="#top"> Back to Top</a>

<br>

### <span id="multi"></span>How does one represent a file that is licensed under two or more licenses?

Conjunctive licensing can be represented via a license expression using
the AND operator. For example, a file that is subject to the Apache-2.0,
MIT, and GPL-2.0-or-later would be represented using the following conjunctive
expression: `Apache-2.0 AND MIT AND GPL-2.0-or-later`.

##### <a href="#top"> Back to Top</a>

<br>

## <span id="add"></span>Adding a License?

### <span id="request"></span>How do I request adding a license to SPDX License List?

Follow the instructions here:
https://github.com/spdx/license-list-XML/blob/main/CONTRIBUTING.md

##### <a href="#top"> Back to Top</a>

<br>

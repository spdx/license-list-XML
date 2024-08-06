This document contains a history of the SPDX License List and OSI-approved licenses, as well as some outstanding issues. 

(last update: August 5, 2024)

# A history and background of OSI-approved licenses and the SPDX License List

In the first releases of the SPDX License List, it was determined that the SPDX License List should include all licenses that were ever OSI-approved - a policy that SPDX-legal maintains to this day. The rationale being that once OSI-approved, always OSI-approved and that even old or "OSI-deprecated"  licenses may still appear "in the wild". 

Note: the OSI and SPDX use the term "deprecated" in different ways. To avoid confusion, this document differentiates by using "OSI-deprecated" or "SPDX-deprecated" for clarity.

In 2011, OSI [began using the SPDX license identifiers](https://opensource.org/meeting-minutes/minutes20110608) in URLs and on the license pages.

The SPDX-legal team sought to accurately identify all OSI-approved licenses and their corresponding text to ensure representation on the SPDX License List. This involved cross-collaboration between SPDX-legal and various OSI representatives, with most communication occurring on the SPDX-legal mailing list, OSI's license-disucss mailing list, or both. John Cowan, Martin Michlmayr, Karl Fogel, and Luis Villa were among the OSI board members who helped Jilayne Lovejoy from SPDX-legal on researching the various issues. 

This page seeks to explain some of the challenges that this reconciliation work encountered, especially where a solution to the challenge may still leave questions for people currently looking at or using both the SPDX License List and the OSI list of approved licenses. Any suggestions that had been made in the past but not implemented or that would aid in clarifiction have been included here as well. 

Over time, the OSI began more actively reviewing licenses and the website got updated in various ways; and SPDX adopted new policies, such as the license expression syntax. As a result, other issues have appeared in terms of "matching" the licenses that appear on both lists. More recent issues may be captured in [this repo (using the "OSI related" label)](https://github.com/spdx/license-list-XML/issues?q=is%3Aopen+is%3Aissue+label%3A%22OSI+related%22) or in an OSI repo, such as https://github.com/OpenSourceOrg/licenses/issues/62 . 

# Outstanding issues

## Old and "OSI-deprecated" licenses
The following old or "OSI-deprecated" licenses were confirmed by the OSI as having been OSI-approved, even though these licenses do not or may not (readily) appear on the OSI website any longer:

* `AFL-1.1`
* `AFL-1.2`
* `AFL-2.0`
* `AFL-2.1`
* `APSL-1.2`
* `OSL-2.0`

See SPDX-legal email list from April 2012 [here](https://lists.spdx.org/g/Spdx-legal/message/311?p=%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cosi%2C20%2C2%2C300%2C22080203) and 
[here](https://lists.spdx.org/g/Spdx-legal/message/312?p=%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cosi%2C20%2C2%2C300%2C22080204) for confirmation of these licenses having been OSI-approved.

Suggestion for OSI: Consider listing all licenses ever approved on OSI website to retain a full historical record (even if noted as superceded).

## Artistic License variations
The OSI explicitly approved two variants of [Artistic License 1.0](https://opensource.org/licenses/Artistic-1.0) as stated at the top of the page: with clause 8 and without. Because the presence or absence of clause 8 presents a substantive difference, SPDX added them as two separate licenses. 

In the course of this research, it was discovered that the text for the Artistic License 1.0 that was listed on the OSI website did not match the text of the Artistic License [used by Perl](https://dev.perl.org/licenses/artistic.html), which has 10 clauses, clause 5, 6, 7, and 8 being different from those on the OSI site. It is still unclear to this day what was originally submitted to OSI or where the text at https://opensource.org/licenses/Artistic-1.0 (either with or without clause 8) has been used in actual code.

As a result SPDX added 3 licenses to accommodate these variations:
* `Artistic-1.0`
* `Artistic-1.0-cl8`
* `Artistic-1.0-Perl`

OSI added a separate page for `Artistic-1.0-Perl` but the notation describing the variant is still confusing. 

Suggestion for OSI: OSI add the SPDX ids, `Artistic-1.0` and `Artistic-1.0-cl8` to [this page](https://opensource.org/licenses/Artistic-1.0) and update the notation to something like,  “OSI approved this variant of Artistic License 1.0, (Artistic-1.0) with 9 clauses, as well as a variant that contains an additional clause 8 (Artistic-1.0-cl8). There is also the variant used by Perl (Artistic-1.0-Perl), which has differences from the text here in clauses 5, 6, 7 and 8.”
And add the SPDX id, `Artistic-1.0-Perl` on [this page](https://opensource.org/licenses/Artistic-Perl-1.0) and update that note accordingly as well. 

These SPDX licenses have an explanation, as appropriate, in the Note field. 

## License exceptions
In at least two cases, the OSI approved a license exception with an SPDX id that is not current: 
* [eCos License version 2.0](https://opensource.org/licenses/eCos-2.0) and lists the SPDX identifiers as `eCos-2.0`
* [wxWindows Library License](https://spdx.org/licenses/wxWindows.html) and lists the SPDX identifier as `wxWindows`
This is probably because these licenses were originally on the SPDX License List as a stand alone licenses. However, when SPDX 2.0 came out in May 2015, exceptions were moved to their own part of the SPDX License List to be used with the `WITH` operator to allow more extensible and varied license expressions, see https://spdx.org/licenses/eCos-2.0.html and now see https://spdx.org/licenses/eCos-exception-2.0.html
and https://spdx.org/licenses/wxWindows.html and now see https://spdx.org/licenses/WxWindows-exception-3.1.html

Question: OSI has the GPL-2.0-or-later license notice on its page for the eCos exception, which would use the SPDX license expression: `GPL-2.0-or-later WITH eCos-exception-2.0`. Did OSI _only_ approve this exception for GPL-2.0-or-later? 

Suggestion for OSI: Update the pages to use the current SPDX identifier for the exception (or the full SPDX license expression). Clarify what versions of GPL it is approved for.

## Licenses that allow for variations by way of a different license notice
These are licenses that were approved by the OSI in full. These licenses allow legally substantive variations based on use of a different license notice (but with the same license text). This variataion warranted distinct SPDX identifiers to indicate whether or not the allowed variation is being triggered. All of these variations include a Note in the SPDX License List entry explaining this. 

* `CAL-1.0-Combined-Work-Exception`
* `MPL-2.0-no-copyleft-exception`
* `OFL-1.1-no-RFN`
* `OFL-1.1-RFN`
* GNU license family, see https://github.com/OpenSourceOrg/licenses/issues/87

Suggestion for OSI: OSI could add the variant SPDX ids to the license pages, and perhaps some kind of notation about the variants that use the same license text.

## Not in SPDX list, but in OSI's list

* [Jabber Open Source License](https://opensource.org/licenses/jabberpl) - This is a case where the text on the OSI site is not the same as the archived text at http://archive.jabber.org/core/JOSL.pdf SPDX would consider these two texts as different licenses, and was trying to clarify with the OSI which text was submitted and approved by OSI. Martin Michlmayr and Jilayne discussed this back in 2013 (https://lists.spdx.org/g/Spdx-legal/topic/22080295#475), but never reached a resolution. Jilayne emailed the OSI Board about this issue in July 2019. 

Suggestion: SPDX could recognize both variants on the SPDX License List and note the one that is specifically OSI-approved. This would require clarification from OSI as to which one was approved and make any updates to its site accordingly. If both variants were OSI-approved, then a new entry would be warranted on the OSI site and on the SPDX License List. 

* [CVW: MITRE Collaborative Virtual Workspace License](https://opensource.org/license/cvw) - Needs further research as to when it was OSI approved and how it didn't get on SPDX License List.

## OSI site missing SPDX id
* [OCLC-2.0](https://opensource.org/license/oclc2-php) - see https://spdx.org/licenses/OCLC-2.0.html - is marked as OSI-approved on SPDX License List
* https://opensource.org/license/python-2-0 uses the right SPDX id in the URL (which is from many years ago), but has the wrong SPDX on the actual page text




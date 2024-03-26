# A History of OSI-approved licenses and the SPDX License List

Early on, the SPDX License List should include all licenses that were ever OSI-approved licenses. The rationale being that once OSI-approved, always OSI-approved and that even old or "deprecated" (by way of a newer version or other such circumstance) licenses may still appear "in the wild". (Note: the OSI and SPDX use "deprecated" in different ways.)

In 2011, OSI [began using the SPDX license identifiers](https://opensource.org/minutes20110608) in their URLs and on the license pages.

The SPDX-legal team sought to accurately identify all OSI-approved licenses and their corresponding text to ensure representation on the SPDX License List. This involved cross-collaboration between SPDX-legal and various OSI representatives, with most communication occurring on the SPDX-legal mailing list, OSI's license-disucss mailing list, or both. John Cowan, Martin Michlmayr, Karl Fogel, and Luis Villa were among the OSI board members who helped Jilayne Lovejoy from SPDX-legal on researching the various issues. 

This page seeks to explain some of the challenges that this reconciliation work encountered, especially where a solution to the challenge may still leave questions for people currently looking at or using both the SPDX License List and the OSI list of approved licenses. Any suggestions that had been made in the past for a possible reconciliation have been reproduced here as well. 

## Old and "deprecated" licenses
The following old or "deprecated" licenses were confirmed by the OSI as having been OSI-approved, even though these licenses do not or may not (readily) appear on the OSI website any longer:

* `AFL-1.1`
* `AFL-1.2`
* `AFL-2.0`
* `AFL-2.1`
* `APSL-1.2`
* `OSL-2.0`

See SPDX-legal email list from April 2012 [here](https://lists.spdx.org/g/Spdx-legal/message/311?p=%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cosi%2C20%2C2%2C300%2C22080203) and 
[here](https://lists.spdx.org/g/Spdx-legal/message/312?p=%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cosi%2C20%2C2%2C300%2C22080204) for confirmation of these licenses having been OSI-approved.

Suggestion: Consider listing all licenses ever approved on OSI website to retain a full historical record.

## Artistic License variations
The OSI explicitly approved two variants of [Artistic License 1.0](https://opensource.org/licenses/Artistic-1.0) as stated at the top of the page: with clause 8 and without. Because the presence or absence of clause 8 presents a substantive difference, SPDX added them as two separate licenses. 

In the course of this research, it was discovered that the text for the Artistic License 1.0 that was listed on the OSI website did not match the text of the Artistic License [used by Perl](https://dev.perl.org/licenses/artistic.html), which has 10 clauses, clause 5, 6, 7, and 8 being different from those on the OSI site. It is still unclear to this day what was originally submitted to OSI or where the text at https://opensource.org/licenses/Artistic-1.0 (either with or without clause 8) has been used in actual code.

As a result SPDX added 3 licenses to accommodate these variations:
* `Artistic-1.0`
* `Artistic-1.0-cl8`
* `Artistic-1.0-Perl`

OSI added a separate page for `Artistic-1.0-Perl` but the notation describing the variant is still confusing. 

Suggestion: OSI add the SPDX ids, `Artistic-1.0` and `Artistic-1.0-cl8` to [this page](https://opensource.org/licenses/Artistic-1.0) and update the notation to something like,  “OSI approved this variant of Artistic License 1.0, (Artistic-1.0) with 9 clauses, as well as a variant that contains an additional clause 8 (Artistic-1.0-cl8). There is also the variant used by Perl (Artistic-1.0-Perl), which has differences from the text here in clauses 5, 6, 7 and 8.”
And add the SPDX id, `Artistic-1.0-Perl` on [this page](https://opensource.org/licenses/Artistic-Perl-1.0) and update that note accordingly as well. 

## License exceptions
In at least one case, the OSI approved a license exception, referred to as [eCos License version 2.0](https://opensource.org/licenses/eCos-2.0) and lists the SPDX identifiers as "eCos-2.0". This is probably because this license was originally on the SPDX License List as a stand alone license. However, when SPDX 2.0 came out in May 2015, exceptions were moved to their own part of the SPDX License List to be used with the `WITH` operator to allow more extensible and varied license expressions, see https://spdx.org/licenses/eCos-2.0.html and now see https://spdx.org/licenses/eCos-exception-2.0.html

Note that OSI has the GPL-2.0-or-later license notice on its page for the eCos exception, which would use the SPDX license expression: `GPL-2.0-or-later WITH eCos-exception-2.0`. Did OSI _only_ approve this exception for GPL-2.0-or-later? 

Suggestion: Update the [eCos](https://opensource.org/licenses/eCos-2.0) page to use the current `eCos-exception-2.0` identifier and change the URL to https://opensource.org/licenses/eCos-exception-2.0. Clarify what versions of GPL it is approved for.

## Licenses that allow for variations by way of a different license notice
These are licesnes that were approved by the OSI in full. These licenses allow legally substantive variations based on use of a different license notice. This variataion warranted distinct SPDX identifiers to indicate whether or not the allowed variation is being triggered. All of these variations include a Note in the SPDX License List entry explaining this. 

* `CAL-1.0-Combined-Work-Exception`
* `MPL-2.0-no-copyleft-exception`
* `OFL-1.1-no-RFN`
* `OFL-1.1-RFN`

Suggestion: OSI could add the variant SPDX ids to the license pages.

## Not in SPDX list, but in OSI's list

* [Jabber Open Source License](https://opensource.org/licenses/jabberpl) - This is a case where the text on the OSI site is not the same as the archived text at http://archive.jabber.org/core/JOSL.pdf SPDX would consider these two texts as different licenses, and was trying to clarify with the OSI which text was submitted and approved by OSI. Martin Michlmayr and Jilayne discussed this back in 2013 (https://lists.spdx.org/g/Spdx-legal/topic/22080295#475), but never reached a resolution. Jilayne emailed the OSI Board about this issue in July 2019. 

Suggestion: SPDX could recognize both variants on the SPDX License List and note the one that is specifically OSI-approved is the one that matches that exact text on the OSI site?  This would require distinct names and identifiers. 

* CVW: MITRE Collaborative Virtual Workspace License

still need to research issue here

# from Max's list - still to address: 
## Not in OSI list, but in SPDX's list

* GPL-3.0-with-GCC-exception

what is the quesiton here?

* LGPL-2.0

this is a deprecated SPDX license id, not sure what the question is here?

* MIT-Modern-Variant

### False-positives

- Many mismatches in GPL/LGPL/AGPL because of -only/-or-later/+. I unified those

what do you mean my mismatches? and "unified those"?

# OSI issues

## Unclear status

* EUPL-1.1 is not on OSI's site but only EUPL-1.2. However, the 1.2 entry links to the 1.1 detail site, and there exists an additional 1.2 URL. So OSI's listing seems confused. It's therefore unclear which licenses are approved.

need to do some research on this one

## Mismatch of IDs in OSI and SPDX
Probably mistakes on OSI's side.

These may be cases of the licenses being submitted to SPDX before OSI approved them and no one at OSI realized. Or they were submitted at a similar time and never cross-checked on the final SPDX id.

- [ ] LiLiQ-P vs. LiLiQ-P-1.1
- [ ] LiLiQ-R vs. LiLiQ-R-1.1
- [ ] LiLiQ-R+ vs. LiLiQ-Rplus-1.1
- [ ] UPL vs. UPL-1.0
- [ ] WXwindows vs. wxWindows

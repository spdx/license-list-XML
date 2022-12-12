# A History of OSI-approved licenses and the SPDX License List

In the early days it was decided that the SPDX License List should include all licenses that were ever OSI-approved licenses. The rationale being that once OSI-approved, always OSI-approved and that even old or deprecated licenses may still appear "in the wild". 

This involved early collaboration between SPDX and OSI starting around 2011 and onward. As the SPDX-legal team sought to accurately identify all OSI-approved licenses and their corresonpding text to ensure that representation on the SPDX License List. This involved cross-collaboration between SPDX-legal and various OSI representagives, with most communication occurring on the SPDX-legal mailing list, OSI's license-disucss mailing list, or both. 

At that time, OSI began using the SPDX license identifiers in their URLs and on the license pages.

This page seeks to explain some of the challenges that this reconciliation work encountered, especially where a solution to the challenge may still leave questions for people currently looking at or using both the SPDX License List and the OSI list of approved licenses. 



## Old and "deprecated" licenses
The following licenses were confirmed by the OSI as having been OSI-approved, even thought these licenses do not or may not (readily) appear on the OSI website:

* `AFL-1.1`
* `AFL-1.2`
* `AFL-2.0`
* `AFL-2.1`
* `APSL-1.2`
* `OSL-2.0`

See SPDX-legal email list from April 2012 [here](https://lists.spdx.org/g/Spdx-legal/message/311?p=%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cosi%2C20%2C2%2C300%2C22080203) and 
[here](https://lists.spdx.org/g/Spdx-legal/message/312?p=%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cosi%2C20%2C2%2C300%2C22080204) for confirmation of these licenses having been OSI-approved.

## Artistic License variations
The OSI also explicitly approved two variants as stated at the top of the page: one with clause 8 and without. Because the presence or absence of clause 8 presents a substantive difference, SPDX added them as two separate licenses. 

In the course of this research, it was also discovered that the text for the Artistic License 1.0 that was listed on the OSI website did not match the text of the Artistic License used by Perl, despite a note on the OSI webpage saying so.  The Artistic License 1.0 on the Perl site has 10 clauses, thus adversion of license, whereas OSI link has 9 clause with note at top about additional clause.  

As a result SPDX added 3 licenses to accommodate these variations:

* `Artistic-1.0`
* `Artistic-1.0-cl8`
* `Artistic-1.0-Perl`

## License exceptions
In at least one case, the OSI approved a license exception, referred to as [eCos License version 2.0](https://opensource.org/licenses/eCos-2.0) and lists the SPDX identifiers as "eCos-2.0"

However, when SPDX 2.0 came out in YEAR, exceptions were moved to their own part of the SPDX License List, to be used with the `WITH` operator to allow more extensible and varied license expressions.

The current, correct SPDX License expression for the license combination shown on the OSI site would be: `GPL-2.0-or-later WITH eCos-exception-2.0`

## Licenses that allow for variations by way of a different license notice
These are licesnes that were approved by the OSI in full. These licenses allow legally substantive variations based on use of a different license notice. This variataion warranted distinct SPDX identifiers to indicate whether or not the allowed variation is being triggered. All of these variations include a Note in the SPDX License List entry explaining this. 

* 'CAL-1.0-Combined-Work-Exception'
* 'MPL-2.0-no-copyleft-exception'
* 'OFL-1.1-no-RFN'
* 'OFL-1.1-RFN'

=====
still need to address these:
====


## Not in SPDX list, but in OSI's list

* jabberpl: Jabber Open Source License
I recall this had some issues that were never resolved - will have to dig that up

* CVW: MITRE Collaborative Virtual Workspace License

## Not in OSI list, but in SPDX's list


* GPL-3.0-with-GCC-exception
what is the quesiton here?

* LGPL-2.0
this is a deprecated SPDX license id, not sure what the question is here?

- [ ] MIT-Modern-Variant

### False-positives

- Many mismatches in GPL/LGPL/AGPL because of -only/-or-later/+. I unified those

# OSI issues

## Unclear status

- [ ] EUPL-1.1 is not on OSI's site but only EUPL-1.2. However, the 1.2 entry links to the 1.1 detail site, and there exists an additional 1.2 URL. So OSI's listing seems confused. It's therefore unclear which licenses are approved.

## Mismatch of IDs in OSI and SPDX

Probably mistakes on OSI's side

- [ ] LiLiQ-P vs. LiLiQ-P-1.1
- [ ] LiLiQ-R vs. LiLiQ-R-1.1
- [ ] LiLiQ-R+ vs. LiLiQ-Rplus-1.1
- [ ] UPL vs. UPL-1.0
- [ ] WXwindows vs. wxWindows

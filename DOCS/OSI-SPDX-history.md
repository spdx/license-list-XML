# A History of OSI-approved licenses and the SPDX License List

(add background here as to history and SPDX endeavoring to add all license ever approved by OSI, matching texts, etc.)

## Old and "deprecated" licenses

Because it was the goal of the SPDX License List to include every license that was approved by the OSI, SPDX needed input from the OSI as to the status of many older or previous versions of licenses that weren't explicitly listed on the OSI website. This was done via email. ADD LINKS

As a result of this collaborative research, the following licenses were confirmed by the OSI as having been OSI-approved, but may not (readily) appear on the OSI website

* AFL-1.1
* AFL-1.2
* AFL-2.0
* AFL-2.1
* APSL-1.0
* APSL-1.1
* APSL-1.2
* OSL-2.0

## Artistic License variations
The SPDX License List includes three variants of the Artistic License v1.0. They are:

* Artistic-1.0
* Artistic-1.0-cl8
* Artistic-1.0-Perl


(remainder copied from https://gist.github.com/mxmehl/1e7a3aed4ff14a8ddfd4aff8ab4de552 which I'll update as I go through the various cateogories/explanations)
## Marked as not OSI compliant in SPDX, but actually on OSI's list

- [ ] eCos-2.0
This is an exception and is on the SPDX License List. It is (or was) listed on OSI. Need to find history in archives. 

## Not in SPDX list, but in OSI's list

* jabberpl: Jabber Open Source License
I recall this had some issues that were never resolved - will have to dig that up

* CVW: MITRE Collaborative Virtual Workspace License

## Not in OSI list, but in SPDX's list

- [ ] CAL-1.0-Combined-Work-Exception
- [ ] MPL-2.0-no-copyleft-exception
- [ ] OFL-1.1-no-RFN
- [ ] OFL-1.1-RFN
These are all licenses that allow legally substantive variations that warranted a distinct SPDX identifiers, but without being a different "version" and thus only listed as one license on the OSI list

* GPL-3.0-with-GCC-exception


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

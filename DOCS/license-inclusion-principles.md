# License Inclusion Principles
The SPDX License List contains licenses that: are commonly found in the supply chain; are open or allow for collaborative development; and may cover a variety of distributable content, for example software, data, hardware, documentation, AI models, etc.

Determining whether a candidate license or exception should be included on the SPDX License List requires the SPDX Legal Team to engage in a case-by-case evaluation of each submission based on a number of factors, generally prioritized as set out below. The ultimate decision will be based on the totality of the factors and in consideration of the [SPDX Project's mission and vision](https://spdx.dev/about/overview/). 

Note: Once a license is added to the SPDX License List, the SPDX license id is immutable.

For a description of the review process, see LINK. For more on the historical background of these guidelines see LINK.

## License Submission Factors

### Prerequisitives:
1. The submitted license does not match another license already on the SPDX License List as per the <a href="https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/">SPDX matching guidelines</a>.
2. The license has been finalized and will not be revised any further; and the license text is publicly available.

### Fast-track inclusion:
For the following cases,  a license will be added to the SPDX License List without a full review under the “Key Factors” and “Other Factors” described further below.
 
1. As per SPDX License List historical policy, all OSI-approved licenses will be included on the SPDX License List.
    1. If a license is submitted to and approved by the OSI, then SPDX does not need to review it under the SPDX license inclusion guidelines. 
    2. Note: If a license is submitted to OSI and not approved or is withdrawn, then SPDX will consider inclusion under the SPDX license inclusion guidelines like any other submitted license.

2. If a license has already been determined to meet free/open license criteria for a widely used community Linux distribution or similar project (“major distro”) and the code under that license is present in the current major distro version, it will be added to the SPDX License List. The approval is subject to confirmation that the license does not match an existing license, and agreement on the SPDX ID. 
    1. The major distro criteria currently includes:
        * Fedora:  licenses that have been assessed as [allowed](https://docs.fedoraproject.org/en-US/legal/license-approval/#_allowed_licenses), [allowed-documentation](https://docs.fedoraproject.org/en-US/legal/license-approval/#_licenses_allowed_for_documentation), [allowed-content](https://docs.fedoraproject.org/en-US/legal/license-approval/#_licenses_allowed_for_content), or [allowed-fonts](https://docs.fedoraproject.org/en-US/legal/license-approval/#_licenses_allowed_for_fonts); or</li>
       * Debian: licenses used for free software in the [‘main’](https://www.debian.org/doc/debian-policy/ch-archive.html#the-main-archive-area) or [‘contrib’](https://www.debian.org/doc/debian-policy/ch-archive.html#the-contrib-archive-area) archive.
    2. The rationale here is that the combination of the nature of the project's free/open license criteria and the license being in a major distro (e.g., substantial use) means that the license already meets the two key factors for inclusion on the SPDX License List. 
 
3. Creative Commons variants: Any Creative Commons license variant is eligible for inclusion, subject to confirmation that it has been used in practice for one or more published materials.
    1. Note: From the early stages of the SPDX License List, all of the Creative Commons license variants were included, in spite of some of them not meeting the SPDX License List inclusion guidelines in place at that time.

### Key factors:
For licenses that are not fast-tracked, the following two factors are the most relevant for deciding whether to add it to the SPDX License List:

1. The license substantially complies with one of the following open source definitions (even if not submitted for approval or these organization have not considered the license):
    * [Open Source Definition (OSD)](https://opensource.org/osd) from the Open Source Initiative (OSI)
    * [Free Software Definition](https://www.gnu.org/philosophy/free-sw.en.html) from the Free Software Foundation (FSF)
    * [Open Source Hardware Definition](https://www.oshwa.org/definition/) from the Open Source Hardware Association (OSHWA)
    * [Open Definition](http://opendefinition.org/od/2.1/en/) from the Open Knowledge Foundation
    * [Free Cultural Works definition](https://freedomdefined.org/Definition) from Freedom Defined.org

and

2. The license has actual, substantial use such that it is likely to be encountered in the supply chain. Substantial use may be demonstrated via use in many projects, or in one or a few significant projects. For example:
    * Substantial use would include a license used in significant upstream projects, such as the Linux kernel, Kubernetes, major Linux distros, etc. 
    * Substantial use may also include very old licenses still included in such significant upstream open source projects.
    * Substantial use would NOT include licenses used only in personal projects or projects not likely to be encountered in the software supply chain;, used only by the license drafter, or for projects that do not (yet) have significant usage.

### Other factors:

1. If the license does not substantively comply with one of the above open source definitions, but the license is primarily intended for free distribution of content (including, in the case of software, its source code) with limited restrictions, and meets other factors listed here.
2. Software licenses that apply only to executables and do not provide for the availability of the source code will not be included on the SPDX License List. However, licenses applicable to device firmware files which are widely distributed in connection with the Linux kernel or Linux distributions (for example, licenses used in the linux-firmware project, or licenses classified by Fedora as “allowed-firmware”) may be considered on a case-by-case basis.
3. The license is structured to be generally usable by anyone, and is not specific to one project, consortium, or corporation.
4. The license steward, if any, is aware of and does not oppose its submission to the SPDX License List.
5. If a prior version of the license was already accepted on the SPDX License List, then a subsequent new version will be reviewed only to the extent it differs from the prior version.

The SPDX legal team will also consider any additional information considered relevant by the license steward or open source community.

Note: Licenses and exceptions that were added before the use of license inclusion guidelines or under prior versions of them, will not be removed from the SPDX License List on that basis. However, they also are not likely to be applicable as precedent to add new licenses or exceptions just because they include similar terms.

# License Exceptions

The SPDX License List also includes a [License Exceptions List](https://spdx.org/licenses/exceptions-index.html). As indicated on that page, the Exceptions List _does not_ include stand-alone licenses. Rather, it is intended for additional text that grants an exception to a license condition or additional permissions beyond those granted in a license.

Candidate submissions for the Exceptions List are considered for inclusion according to the following factors:
1. The exception is not a stand-alone license.
2. The exception:
    * grants an exception to a license condition; and/or
    * grants an additional permission beyond those granted in a license.
3. The exception does not impose additional restrictions or limitations beyond those granted in the underlying license.
    * For example, a restriction on commercial use would impose an additional restriction.
4. The exception has actual, substantial use such that it is likely to be encountered in the software supply chain.

The SPDX legal team uses the same process for evaluation and consideration of Exceptions as for Licenses (e.g., submission for consideration; discussion via GitHub issues; and community review and approval).

*last updated September 2026*

# Historical Background
## In the beginning...
The first beta version of the SPDX License List was published in August 2010 and had approximately one hundred licenses on it. The initial set of licenses was included based on informal discussion and consensus on the SPDX working group calls and email list. Although various "guidelines" were identified in regards to which licenses to include or not by way of ad hoc discussion, formal guidelines were not articulated. Decisions or guidelines that evolved by implication included the following:
* Include commonly found open source licenses. Although discussion was not explicit in regards to how to define an "open source license," this was always an implicit guiding principle.
* Include all OSI approved licenses, both current and those approved but now deprecated. The rationale being that once OSI-approved, always OSI-approved and deprecated licenses still appear "in the wild". This involved early collaboration between SPDX and OSI (2011) to accurately identify and ensure that all OSI-approved licenses were represented on the SPDX License List. At that time, OSI began using the SPDX license identifiers in their URLs and on the license pages.

At some point in these early days, there was consensus to include _all_ of the Creative Commons licenses, even though the NC and ND variants do not fit the OSD. Other older licenses that were accepted on the list by consensus before we had formal inclusion guidelines may also fall under this "grand-licensed-in" reality.

## First set of inclusion principles - early 2013
In the waning days of 2012, we realized the need to make it clear and transparent to the world what criteria was being used to determine when to "accept" or "reject" a request to add a license to the SPDX License List. The result of those discussions was the publication of the license inclusion guidelines on the SPDX website in early 2013.

A copy of those original license inclusion principles as posted on the SPDX website are copied below:

### License Inclusion Principles (March 2013) 
The Software Package Data Exchange® (SPDX®) specification is a standard format for communicating, among other things, the components, licenses, and copyrights associated with open source software packages. Use of this standard streamlines license identification across the supply chain while reducing redundant work.

The goal of SPDX is not to evaluate licensing information or to provide legal interpretations. The only goal is to reliably and consistently communicate and share objective factual information so that organizations using software components will have the information necessary to conduct their independent analysis and evaluation. Establishing a consistent, reliable, and reusable way to communicate license information for software components will facilitate open source license compliance along the supply chain.

Although SPDX has traditionally focused on open source licensing, software may contain a mix of open-source licensed, commercially-licensed, freeware licensed, and other varieties of licensed software. Thus, it is feasible that a future version of the standard may develop a standardized method of identifying non-open source licenses contained within software packages.

Because the present focus of SPDX is the collection and presentation of the open-source software licenses contained in a software package, any license that is a candidate for inclusion on the SPDX License List must have the general attributes of an "open source" license.

Open Source Definition 
The terms "free software," "open source software," or their variants (FOSS, FLOSS, libre software, etc.) are defined differently by different organizations. At a minimum, all definitions of open source or free software include the characteristic that the source code be made available for inspection and modification and that the source code may be freely distributed. However, there are a number of other characteristics that vary depending on the policy focus of the defining organization. Even though the various definitions of open source software differ in some respects, there are certain fundamental characteristics commonly incorporated in all these definitions.

The SPDX Legal Team uses the definition promulgated by the Open Source Initiative (OSI) as the basis for analyzing candidate licenses for inclusion on the SPDX License List. 

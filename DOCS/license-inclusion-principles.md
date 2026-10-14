# License Inclusion Guidelines
The SPDX License List contains licenses that: are commonly found in the supply chain; are generally open or allow for collaborative development; and may cover a variety of distributable content, for example software, data, hardware, documentation, AI models, etc.

Determining whether a candidate license or exception should be included on the SPDX License List requires the SPDX Legal Team to engage in a case-by-case evaluation of each submission based on a number of factors, generally prioritized as set out below. The ultimate decision will be based on the totality of the factors and in consideration of the [SPDX Project's mission and vision](https://spdx.dev/about/overview/). 

Note: Once a license is added to the SPDX License List, the SPDX license id is immutable.

For more information of the review process, see [request license](https://github.com/spdx/license-list-XML/blob/main/DOCS/request-new-license.md#review-process). For more on the historical background of these guidelines see [LINK](https://github.com/spdx/license-list-XML/blob/main/DOCS/history.md).

## License Submission Factors

### Prerequisitives:
These Prerequisites need to be met before considering a license under the further factors below.

1. The submitted license does not match another license already on the SPDX License List as per the <a href="https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/">SPDX matching guidelines</a>.
2. The license has been finalized and will not be revised any further; and the license text is publicly available.

### Fast-track inclusion:
For the following cases,  a license will be added to the SPDX License List without further review under the “Key Factors” and “Other Factors”.
 
1. As per SPDX License List historical policy, all OSI-approved licenses will be included on the SPDX License List.
    1. If a license is submitted to and approved by the OSI, then SPDX does not need to review it under the SPDX license inclusion guidelines. 
    2. Note: If a license is submitted to OSI and not approved or is withdrawn, then SPDX will consider inclusion under the SPDX license inclusion guidelines like any other submitted license.

2. If a license has already been determined to meet the license criteria for a widely used community Linux distribution or similar project (“major distro”) and the code under that license is present in the current major distro version, it will be added to the SPDX License List. The approval is subject to confirmation that the license does not match an existing license, and agreement on the SPDX ID. 
    1. The major distro criteria currently includes:
        * Fedora:  licenses that have been assessed as [allowed](https://docs.fedoraproject.org/en-US/legal/license-approval/#_allowed_licenses), [allowed-documentation](https://docs.fedoraproject.org/en-US/legal/license-approval/#_licenses_allowed_for_documentation), [allowed-content](https://docs.fedoraproject.org/en-US/legal/license-approval/#_licenses_allowed_for_content), or [allowed-fonts](https://docs.fedoraproject.org/en-US/legal/license-approval/#_licenses_allowed_for_fonts); or</li>
       * Debian: licenses used for free software in the [‘main’](https://www.debian.org/doc/debian-policy/ch-archive.html#the-main-archive-area) or [‘contrib’](https://www.debian.org/doc/debian-policy/ch-archive.html#the-contrib-archive-area) archive.
    2. The rationale here is that the combination of the nature of the project's license criteria and the license being in a major distro (e.g., substantial use) means that the license appropriate for inclusion on the SPDX License List. 
 
3. Creative Commons variants: Licenses published by Creative Commons will be included on the SPODX License List, subject to confirmation that it has been used in practice for one or more published materials.
    1. Note: From the early stages of the SPDX License List, all of the Creative Commons license variants were included, in spite of some of them not meeting the SPDX License List inclusion guidelines in place at that time.

### Key Factors:
For licenses that are not fast-tracked, the following two factors are the most relevant for deciding whether to add it to the SPDX License List:

1. The license substantially complies with one of the following open source definitions (even if not submitted for approval or these organizations have not considered the license):
    * [Open Source Definition (OSD)](https://opensource.org/osd) from the Open Source Initiative (OSI)
    * [Free Software Definition](https://www.gnu.org/philosophy/free-sw.en.html) from the Free Software Foundation (FSF)
    * [Open Source Hardware Definition](https://www.oshwa.org/definition/) from the Open Source Hardware Association (OSHWA)
    * [Open Definition](http://opendefinition.org/od/2.1/en/) from the Open Knowledge Foundation
    * [Free Cultural Works definition](https://freedomdefined.org/Definition) from [FreedomDefined.org](https://FreedomDefined.org)

and

2. The license has actual, substantial use such that it is likely to be encountered in the supply chain. Substantial use may be demonstrated via use in many projects, or in one or a few significant projects. For example:
    * Substantial use would include a license used in significant upstream projects, such as the Linux kernel, Kubernetes, major Linux distros, etc., including very old licenses still included in such significant upstream open source projects.
    * Substantial use would NOT include licenses used only in personal projects or projects not likely to be encountered in the software supply chain;, used only by the license drafter, or for projects that do not (yet) have significant usage.

### Other factors:

1. If the license does not substantively comply with one of the above open source definitions, but the license is primarily intended for free distribution of content (including, in the case of software, its source code) with limited restrictions.
2. Software licenses that apply only to executables and do not provide for the availability of the source code will not be included on the SPDX License List. However, licenses applicable to device firmware files which are widely distributed in connection with the Linux kernel or Linux distributions (for example, licenses used in the [linux-firmware](https://gitlab.com/kernel-firmware/linux-firmware/-/blob/main/LICENSE-CRITERIA.md?ref_type=heads) project, or licenses classified by Fedora as “allowed-firmware”) may be considered on a case-by-case basis.
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

# What if the license or exception does not meet these guidelines? #

The SPDX Specification provides a way to create your own SPDX-compatible license or exception identifier as further described [here](https://github.com/spdx/license-list-XML/blob/main/DOCS/faq.md#how-does-one-handle-licenses-not-found-in-the-spdx-license-list)

*last updated October 2026*

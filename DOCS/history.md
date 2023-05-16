# A historical timeline for the SPDX License List

## The beginning
* 2009: The concept of the SPDX project begins. [LWN](https://lwn.net/Articles/370308/) writes about it in Jan 2010.
* Aug 2010: Early discusions of the need for [a fixed list of licenses](https://wiki.spdx.org/view/General_Meeting/Minutes/2010-08-26) led to the arugment for decoupling that list from the spec itself. [Version 1.0 (beta)](https://web.archive.org/web/20110128200808/spdx.org/licenses) is posted on the SPDX website. The initial set of licenses was included based on informal discussion and consensus on the SPDX working group calls and email list. 
* Sept 2010: [Special meeting](https://wiki.spdx.org/view/Legal_Team/Minutes/2010-09-24) to discuss the format and approach for the SPDX License List. 
* Dec 2010: [SPDX legal workstream](https://wiki.spdx.org/view/Legal_Team/Minutes/2010-12-15) created and begins having dedicated meetings every other week
* Spring 2011: OSI adopts SPDX identifiers on website; [work begins](https://opensource.org/minutes20110608) between the two groups to align license text of OSI-approved licenses; emails exchanged over SPDX and OSI mailing lists relating to this project over the next couple years.
* Aug 2011: SPDX Specification 1.0 released
* April 2012: SPDX-legal establishs and publishes a process for requesting a new license be added to the SPDX License List via spdx-legal mailing list
* July 2012: blog post about [using SPDX identifers in source files](https://hakre.wordpress.com/2012/07/25/using-the-spdx-license-list-for-tagging-and-linking/)
* 2012/2013: [Initial license inclusion principles](https://wiki.spdx.org/view/Legal_Team/Decisions/Inclusion_Guidelines_(Background)) created and posted to SPDX website
* 2013: [U-Boot begins using SPDX identifiers](https://gitlab.denx.de/u-boot/u-boot/blob/6612ab33956ae09c5ba2fde9c1540b519625ba37/post/post.c) in source files
* Early 2014: origin files for SPDX License List move to Git repository (v1.19 / v1.20)
* Aug 2014: v1.20 released with ~80 new licenses from Fedora “good list”
## Version 2.0
* May 2015: [v2.0 of both the spec and license list are released](https://spdx.dev/milestone-day-spdx-release-version-2-0-release-great-step-forward-greatly-expands-utility-applicability-spec/), adding the license expression syntax (in the spec) and a distinct list of license exceptions (to the license list) to allow greater flexibility in representing licenses or license combinations. SPDX-legal implements a quarterly release cycle for the SPDX License List.
* July 2015: A [simple request](https://lists.spdx.org/g/Spdx-legal/message/1186) to clarify the application of the Matching Guidelines to Apache-2.0 kicks off a discussion of a better implementation of the matching guidelines and storage of SPDX License List data.  SPDX legal and tech team start working on a [matching template project for SPDX license files](https://wiki.spdx.org/view/Legal_Team/Templatizing).
* Early 2016: Plan is finalized to convert SPDX License List from its original format of a spreadsheet and text files to XML files with specific markup to implement the matching guidelines. This requires human review of each auto-generated initial XML file for every license and exception on the SPDX License List. 
* Spring 2016: v2.1 of the SPDX Spec adds an [Appendix on using license identifiers in source files](https://spdx.dev/spdx-specification-21-web-version/#h.twlc0ztnng3b)
* Mid 2017: [Linux kernel starts using SPDX identifiers](https://lwn.net/Articles/739183/) with work getting underway in earnest by Nov 2017
## Version 3.0
* May 2017: Free Software Foundation, by way of the Executive Director and Richard Stallman, reach out to Kate and Jilayne asking that SPDX change the GPL-2.0 identifier to be more clear that it is referring to GPL-2.0 "only". Discussions on this topic begin amongst the [SPDX legal and tech](https://wiki.spdx.org/view/Legal_Team/Minutes/2017-07-06) teams over the rest of the year as to how to accommodate this ask while maintaining backward compatibility. This also prompts a closer look at how other licenses deal with options to use any later version of the license. This is in the midst of the templatizing work to convert the SPDX License List to a different format.
* Jan 2018: [SPDX License List v3.0 release](https://spdx.dev/license-list-3-0-released/) converts original files to XML format implementing matching guidelines and revised GNU licenses identifiers. SPDX-legal evolves to full use of Github for maintaining the SPDX License List
* Summer 2018: GSoC project creates online license submission tool
* mid-2019: Start discussions to revisit and update license inclusion guidelines. Discussions occur in [Github issue](https://github.com/spdx/license-list-XML/issues/925), [legal calls](https://wiki.spdx.org/view/Legal_Team/Minutes/2019-10-17), and then a [pull request](https://github.com/spdx/license-list-XML/pull/985) into early 2020. 
* Mar 2020: New license inclusion guidelines [finalized and published](license-inclusion-principles.md) in the DOCS section of the SPDX License List Github repo, instead of a page on the website, as they had been previously.
* Sept 2021: The SPDX specificaton is [recognized as an ISO standard](https://www.linuxfoundation.org/press/featured/spdx-becomes-internationally-recognized-standard-for-software-bill-of-materials)
* July 2022: [Fedora officially adopts the use of SPDX license identifiers](https://communityblog.fedoraproject.org/important-changes-to-software-license-information-in-fedora-packages-spdx-and-more/) in the license metadata of Fedora package spec files.




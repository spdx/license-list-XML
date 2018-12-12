# Before you contribute to the SPDX License List
Please familiarize yourself with the SPDX License List and its supporting documentation, so that you understand the pertinent context around the list itself:
* [Overview of the SPDX License List](https://spdx.org/spdx-license-list/license-list-overview) explains some key background, principles for the inclusion of a license on the SPDX License List, as well as an explanation of the fields contained on the list.
* [SPDX License List Matching Guidelines](https://spdx.org/spdx-license-list/matching-guidelines) provides guidelines to be used for the purposes of matching licenses and license exceptions against those included on the SPDX License List. 
* [SPDX Specification](https://spdx.org/specifications): It is helpful to be familiar with certain sections of the SPDX Specification thatuse or deal with the SPDX License List. In particular: sub-sections related to license information in Section 3, 4, and 6; Appendices II, IV, and V.  

# How to contribute/participate: general
The SPDX License List is maintained by the SPDX Legal Team. Work and discussion is primarily done via:
* mailing list: our traditional form of communication. Meeting reminders, minutes, updates are posted there, as well as discussion.
* this Github repo: comments and issues and PRs related to specific changes to the files that comprise the SPDX License List, e.g., update a URL, recommend additional markup for matching purposes. In particular, new license requests are tracked here.
* bi-weekly calls: used to discuss topics and issues that may be difficult to only discuss via email or via Github.
You can join the mailing list and otherwise manage your subscription [via spdx-legal mailman](https://lists.spdx.org/mailman/listinfo/spdx-legal). 
Information on the bi-weekly calls and the working area for the SPDX Legal Team, can be found on the [SPDX legal team wiki](https://wiki.spdx.org/view/Legal_Team)

Please do not raise general questions via issues in this Github repository, but use the appropriate workgroup mailing list. 

# Request a new license or exception be added to the SPDX License List
The SPDX Legal Team appreciates proposals for new free and open source licenses or exceptions to be added to the SPDX License List.  To request a license or exception be added to the SPDX License List, please:

1.  Review the [license list overview and inclusion principles](https://spdx.org/spdx-license-list/license-list-overview).

2.  Check the [SPDX License List](https://spdx.org/licenses/), historical license and exceptions [tracking page](https://docs.google.com/spreadsheets/d/11AKxLBoN_VXM32OmDTk2hKeYExKzsnPjAVM7rLstQ8s/edit?pli=1#gid=695212681) and issues labeled [new license/exception request](https://github.com/spdx/license-list-XML/labels/new%20license%2Fexception%20request) to ensure this license or exception has not been previously requested. 

3. Submit your request via the [SPDX Online Tool, Submit New License](http://13.57.134.254/app/submit_new_license/) using the following guidance, also see [overview-fields](https://spdx.org/spdx-license-list/license-list-overview#fields) for more info on some of these fields. Note, you must have a Github id in order to use this tool/process. 

* Full Name: Provide a proposed Full Name for the license or exception. 
* Short Identifier: Provide a proposed Short Identifier. 
* Source/URL: Provide a functioning URL reference to the license or exception text, preferably from the author or a community recognized source.
* OSI Approved: Indicate whether the license is OSI-approved or is currently under review. (If the latter, please provide some information as to where in the process.) 
* Standard License Header: If the license designates specific text to be put in the header of source files, include that here; otherwise leave blank.
* Text: Full text of the license or exception. 
* Comments: Provide a short explanation regarding the need for this license or exception to be included on the SPDX License List, and identify at least one program that uses it.

4. Follow the discussion or any request for additional information via the Issue and comments. Note, if the SPDX-legal team has questions that go unanswered for several months, we will close the issue without making a final decision. 

## Review Process

1. The SPDX Legal Team will discuss any submissions for new licenses or exceptions via comments in the Github issue. Please follow the comments and respond accordingly if there are questions or additional information requested.
2. New licenses may be approved if 3 SPDX-legal team members (2 lawyers, 1 non-lawyer) sign-off that the license is acceptable AND there is no objection raised from the greater SPDX-legal community. If there are objections, then the issue will be labelled "discuss on legal call" and will be discussed on an upcoming bi-weekly call. 
2. Issues will be lablled either "new license/exception: Accepted" or "new license/exception: Not Accepted" as appropriate with an explanation and the Issue closed for the latter case.
3. If accepted, the new license or exception will be prepared by a member of the SPDX Legal Team in the proper XML format and plain text via a Pull Request and reviewed as appropriate. 
4. The new license/exception will be officially added for the next release of the SPDX License List.





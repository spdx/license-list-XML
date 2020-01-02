# Before you contribute to the SPDX License List
Please familiarize yourself with the SPDX License List and its supporting documentation, so that you understand the pertinent context around the list itself:
* [Overview of the SPDX License List](https://spdx.org/spdx-license-list/license-list-overview) explains some key background, principles for the inclusion of a license on the SPDX License List, as well as an explanation of the fields contained on the list.
* [SPDX License List Matching Guidelines](https://spdx.org/spdx-license-list/matching-guidelines) provides guidelines to be used for the purposes of matching licenses and license exceptions against those included on the SPDX License List.
* [SPDX Specification](https://spdx.org/specifications): It is helpful to be familiar with certain sections of the SPDX Specification thatuse or deal with the SPDX License List. In particular: sub-sections related to license information in Section 3, 4, and 6; Appendices II, IV, and V.

Please join the mailing list and our bi-weekly calls! See details in next section.

# How to contribute/participate
The SPDX License List is maintained by the SPDX Legal Team. Work and discussion is primarily done via:
* **join the mailing list**: Please introduce yourself and let us know a bit about your interest in SPDX! The mailing list is our traditional form of communication. Join the mailing list and otherwise manage your subscription [via spdx-legal mailman](https://lists.spdx.org/mailman/listinfo/spdx-legal).
* **bi-weekly calls**: used to discuss topics and issues that may be difficult to only discuss via email or via Github. Information on the bi-weekly calls and the working area for the SPDX Legal Team, can be found on the [SPDX legal team wiki](https://wiki.spdx.org/view/Legal_Team)
* **this Github repo**: comments and issues and PRs related to specific changes to the files that comprise the SPDX License List, e.g., update a URL, recommend additional markup for matching purposes, or other such changes. Requests for new license or exceptions are tracked here, see more info on that process below.

Please do not raise general questions via issues in this Github repository, but use the appropriate workgroup mailing list.

## Request a new license or exception be added to the SPDX License List
The SPDX Legal Team appreciates proposals for new free and open source licenses or exceptions to be added to the SPDX License List.  To request a license or exception be added to the SPDX License List, please:

1.  Review the [license list overview and inclusion principles](https://spdx.org/spdx-license-list/license-list-overview).

2.  Check the [SPDX License List](https://spdx.org/licenses/), keeping in mind the [SPDX License List Matching Guidelines](https://spdx.org/spdx-license-list/matching-guidelines) and issues labeled [new license/exception request](https://github.com/spdx/license-list-XML/labels/new%20license%2Fexception%20request) to ensure this license or exception has not been previously requested.

3. Submit your request via the SPDX Online Tool [Submit New License](http://13.57.134.254/app/submit_new_license/) using the guidance provided there. See also [overview-fields](https://spdx.org/spdx-license-list/license-list-overview#fields) for more info on some of these fields. Note: you must have a Github account in order to use this tool/process.

4. Follow the discussion or any request for additional information via the issue and comments. Please note, if the SPDX-legal team has questions that go unanswered by the submitter for several months, we will close the issue without making a final decision.

## Review Process

1. The SPDX Legal Team will discuss any submissions for new licenses or exceptions via comments in the Github issue. Please follow the comments and respond accordingly if there are questions or additional information requested.
2. New licenses may be approved if 3 SPDX-legal team members (2 lawyers, 1 non-lawyer) sign-off that the license is acceptable AND there is no objection raised from the greater SPDX-legal community within the Github issue comments. If there are objections, then the issue will be labelled "discuss on legal call" and will be discussed on an upcoming bi-weekly call.
3. Issues will be labelled either "new license/exception: Accepted" or "new license/exception: Not Accepted" as appropriate with an explanation and the Issue closed for the latter case.
4. If accepted, the new license or exception will be prepared by a member of the SPDX Legal Team in the proper XML format and plain text test file via a Pull Request and reviewed as appropriate.
5. The new license/exception will be officially added for the next release of the SPDX License List.

## Release Timing
* SPDX License List releases are done on quarterly basis (more or less) - i.e. end of March, end of June, end of September, end of December
* All PRs to be included as part of release must be merged 1 week prior to release date to allow time for actual release work
* Any new issues raised within the month of the next release will likely be tagged for the following release, unless it is an easy-to-resolve issue

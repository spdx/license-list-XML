# Before you contribute to the SPDX License List
Please familiarize yourself with the SPDX License List and its supporting documentation, so that you understand the pertinent context around the list itself:
* [Overview of the SPDX License List](https://spdx.org/spdx-license-list/license-list-overview) explains some key background, principles for the inclusion of a license on the SPDX License List, as well as an explanation of the fields contained on the list.
* [SPDX License List Matching Guidelines](https://spdx.org/spdx-license-list/matching-guidelines) provides guidelines to be used for the purposes of matching licenses and license exceptions against those included on the SPDX License List. 

# How to contribute/participate: general
The SPDX License List is maintained by the SPDX Legal Team. Work for the SPDX Legal Team is done both via the mailing list and bi-weekly calls. In particular, the bi-weekly calls are used to discuss topics and issues that may be difficult to only discuss via email.
You can join the mailing list and otherwise manage your subscription [via spdx-legal mailman](https://lists.spdx.org/mailman/listinfo/spdx-legal). Information on the bi-weekly calls and the working area for the SPDX Legal Team, can be found on the [SPDX wiki](https://wiki.spdx.org/view/Legal_Team)

## Request a new license or exception be added to the SPDX License List
The SPDX Legal Team greatly appreciates proposals for new free and open source licenses or exceptions to be added to the SPDX License List.  To request a license or exception be added to the SPDX License List, please:

#  Review the [license list overview and inclusion principles](https://spdx.org/spdx-license-list/license-list-overview).

2)  Check the historical license and exceptions [tracking page](https://docs.google.com/spreadsheets/d/11AKxLBoN_VXM32OmDTk2hKeYExKzsnPjAVM7rLstQ8s/edit?pli=1#gid=695212681) and Issues with label ADD to ensure this license or exception has not been previously requested. 

3) Submit your request with all of the following information either via a new Issue or via the SPDX-legal mailing list
If you are not on the SPDX-legal mailing list, please join here. If you send your license request without joining the mailing list, this will greatly slow down correspondance in both directions.

* Issue name or email subject line: "New License/Exception Request: <license/exception name>" 
* Provide a proposed Full Name for the license or exception.
* Provide a proposed Short Identifier.
* Provide a functioning url reference to the license or exception text
* Provide the text of the license (in plain text form, via an attachment to the email) 
* Indicate whether the license is OSI-approved (see: http://www.opensource.org/licenses/alphabetical) or whether it has been submitted for approval to the OSI and is currently under review.
* Provide a short explanation regarding the need for this license or exception to be included on the SPDX License List, including identifying at least one program that uses this license.

### Review Process
* The SPDX Legal Team normally meets every 2 weeks. Part of the agenda for these meetings is reviewing any submissions for new licenses or exceptions to be added to the SPDX License List.
* New submissions meeting the inclusion standards and the requirements above are approved at the next available Legal Team meeting. If further information or clarification is required, the Team will reach out to the requestor accordingly.
* Upon approval, the new license or exception will be prepared by a member of the SPDX Legal Team in the proper XML format and plain text via a Pull Request and reviewed as appropriate
* The new license/exception will be officially  added to the next release of the SPDX License List.

## Other Contributions to the SPDX License List
If you find an error or have a suggested update to an existing license, please open an Issue here. Someone will respond and depending on the nature of the Issue, it may be referred for further discussion on the mailing list or bi-weekly calls. Examples of things that should be logged via an issue here (versus raised on the mailing list/discussed on calls) may include:
* update an URL for a license
* recommend additional markup for matching purposes (usually requires legal review)

# Before you contribute to the SPDX License List
Please familiarize yourself with the SPDX License List and its supporting documentation, so that you understand the pertinent context around the list itself:
* [Overview of the SPDX License List](https://spdx.org/spdx-license-list/license-list-overview) explains some key background, principles for the inclusion of a license on the SPDX License List, as well as an explanation of the fields contained on the list.
* [SPDX License List Matching Guidelines](https://spdx.org/spdx-license-list/matching-guidelines) provides guidelines to be used for the purposes of matching licenses and license exceptions against those included on the SPDX License List. 

# How to contribute/participate: general
The SPDX License List is maintained by the SPDX Legal Team. Work and discussion is primarily done both via the mailing list and bi-weekly calls. In particular, the bi-weekly calls are used to discuss topics and issues that may be difficult to only discuss via email.
You can join the mailing list and otherwise manage your subscription [via spdx-legal mailman](https://lists.spdx.org/mailman/listinfo/spdx-legal). Information on the bi-weekly calls and the working area for the SPDX Legal Team, can be found on the [SPDX wiki](https://wiki.spdx.org/view/Legal_Team)

## Request a new license or exception be added to the SPDX License List
The SPDX Legal Team greatly appreciates proposals for new free and open source licenses or exceptions to be added to the SPDX License List.  To request a license or exception be added to the SPDX License List, please:

1.  Review the [license list overview and inclusion principles](https://spdx.org/spdx-license-list/license-list-overview).

2.  Check the historical license and exceptions [tracking page](https://docs.google.com/spreadsheets/d/11AKxLBoN_VXM32OmDTk2hKeYExKzsnPjAVM7rLstQ8s/edit?pli=1#gid=695212681) and issues labeled [new license/exception request](https://github.com/spdx/license-list-XML/labels/new%20license%2Fexception%20request) to ensure this license or exception has not been previously requested. 

3. Submit your request with all of the following information either via a new Issue or via the SPDX-legal mailing list
(If you are not on the SPDX-legal mailing list, please join first, see above. If you send your license request without joining the mailing list, this will greatly slow down correspondance in both directions.)

* Issue name or email subject line: "New License/Exception Request: <license/exception name>" 
* Provide a proposed Full Name for the license or exception.
* Provide a proposed Short Identifier.
* Provide a functioning url reference to the license or exception text
* Indicate whether the license is OSI-approved (see: http://www.opensource.org/licenses/alphabetical) or whether it has been submitted for approval to the OSI and is currently under review.
* Provide a short explanation regarding the need for this license or exception to be included on the SPDX License List, including identifying at least one program that uses it.
* Provide the text of the license. 

### Review Process
1. The SPDX Legal Team will discuss any submissions for new licenses or exceptions on the bi-weekly calls. If further information or clarification is required, the Team will reach out to the requestor accordingly.
2. Issues will be labled either "new license/exception: Accepted" or "new license/exception: Not Accepted" as appropriate with an explanation and the Issue closed for the latter case.
3. Upon acceptance, the new license or exception will be prepared by a member of the SPDX Legal Team in the proper XML format and plain text via a Pull Request and reviewed as appropriate. 
4. The new license/exception will be officially added for the next release of the SPDX License List.

## Other Contributions to the SPDX License List
If you find an error or have a suggested update to an existing license, please open a [new issue](https://github.com/spdx/license-list-XML/issues/new). Someone will respond and depending on the nature of the Issue, it may be referred for further discussion on the mailing list or bi-weekly calls. Examples of things that should be logged via an issue (versus raised on the mailing list/discussed on calls) may include:
* update an URL for a license
* recommend additional markup for matching purposes (usually requires legal review)
Please do not raise general questions via issues in this Github repository, but use the appropriate workgroup mailing list. 

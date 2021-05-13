
The SPDX Legal Team appreciates proposals for new free and open source licenses or exceptions to be added to the SPDX License List.  Please make sure to stay engaged with your request and if it is accepted, then help prepare the files necessary to its inclusion on the SPDX License List.

# How to request a new license or exception be added to the SPDX License List

1. Join the [legal team mailing list](https://lists.spdx.org/g/spdx-legal).

2.  Review the [license inclusion principles](DOCS/license-inclusion-principles.md).

3.  Check the [SPDX License List](https://spdx.org/licenses/), keeping in mind the [SPDX License List Matching Guidelines](https://spdx.org/spdx-license-list/matching-guidelines) and issues labeled [new license/exception request](https://github.com/spdx/license-list-XML/labels/new%20license%2Fexception%20request) to ensure this license or exception has not been previously requested.

4. If your license is not already SPDX License List, submit your request via the SPDX Online Tool [Submit New License](https://tools.spdx.org/app/submit_new_license/) using the guidance provided there. Also see the [explanation of the fields contained on the list](DOCS/license-fields.md).
   * Note: You must have a Github account in order to use this tool/process.
   * Note: Whether you use the [Submit New License](https://tools.spdx.org/app/submit_new_license/) tool or submit manually via a new issue, you will need to provide *all* of the information as per the form in the tool. Incomplete submissions will delay the process.

5. Submitters are expected to follow and participate in the discussion and answer any request for additional information via the issue and comments. Please note, if submitters are unresponsive for several months, the issue will be closed without making a final decision.

# Review Process

1. The SPDX Legal Team will discuss any submissions for new licenses or exceptions via comments in the Github issue and on our bi-weekly calls as needed. Please follow the comments and respond accordingly if there are questions or additional information requested.
  * New licenses may be approved if 3 SPDX-legal team members (2 lawyers, 1 non-lawyer) sign-off that the license is acceptable AND there is no objection raised from the greater SPDX-legal community within the Github issue comments. If there are objections, then the issue will be labeled "discuss on legal call" and will be discussed on an upcoming bi-weekly call.
  
2. Issues will be labeled either "new license/exception: Accepted" or "new license/exception: Not Accepted" as appropriate with an explanation and the Issue closed for the latter case.

3. If accepted, the new license or exception will be need to be prepared in the proper XML format and plain text test file via a Pull Request and reviewed as appropriate. The plain text test file should be UTF-8 encoded and match the text and formatting of the original license. The Pull Request is ideally done by the license submitter, with help from experienced members of the SPDX legal team, as needed.

4. The new license/exception will be officially added for the next release of the SPDX License List.

Note: Once a license has been accepted to be added to the SPDX License List, it is fine to start using the SPDX identifier, even if the official release has not yet occurred. 
Note: If a license is *not* accepted for inclusion on the SPDX License List, you can use the 'LicenseRef-[idstring]' tag to identify your license, as per [SPDX specification, section 6](https://spdx.github.io/spdx-spec/6-other-licensing-information-detected/)

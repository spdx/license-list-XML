
The SPDX Legal Team appreciates proposals for new free and open source licenses or exceptions to be added to the SPDX License List.  Please make sure to stay engaged with your request and if it is accepted, then help prepare the files necessary to its inclusion on the SPDX License List.

# How to request a new license or exception to the SPDX License List

1.  Review the [license inclusion principles](license-inclusion-principles.md).
    * NOTE: Please refrain from submitting licenses that clearly do not meet these principles, for example, a license for which the text is not finalized or is a non-FOSS license only used for a small or personal project.
    * NOTE: Make sure the license isn't already on the SPDX License List. This [guidance](license-match.md) can help with this task.

2. Submit your request via the SPDX Online Tool [Submit New License](https://tools.spdx.org/app/submit_new_license/) (preferred method) using the guidance provided there. Also see the [explanation of the fields contained on the list](license-fields.md). Alternatively, you may use the new license request issue template. 
   * NOTE: You must have a Github account in order to use this tool/process.
   * NOTE: You need to provide *all* of the information as per the form or issue template. Incomplete submissions waste time and may be closed.

3. Follow your issue and particpate in the discussion or answer any request for additional information via the issue and comments.
    * NOTE: If submitters are unresponsive for several months or cannot address the guidance for submitting a license, the issue may be closed without a decision.

# Review Process

1. The SPDX Legal Team will discuss any submissions for new licenses or exceptions via comments in the Github issue and on our bi-weekly calls as needed. Please follow the comments and respond accordingly if there are questions or additional information requested.
    1. New licenses may be approved if 3 SPDX-legal team members (at least 1 lawyer) sign-off that the license is acceptable AND there is no objection raised from the greater SPDX-legal community within the Github issue comments. If there are objections, then the issue will be labeled "discuss on legal call" and will be discussed on an upcoming bi-weekly call.
    2. New licenses that have already met the criteria to be allowed in [Fedora](https://docs.fedoraproject.org/en-US/legal/license-approval/) or [Debian](https://www.debian.org/social_contract) and code under the license exists in that distro, can be approved by 2 SPDX-legal team members.
  
2. Issues will be labeled either `new license/exception: Accepted` or `new license/exception: Not Accepted` as appropriate with an explanation and the Issue closed for the latter case.

NOTE: If a license is *not* accepted for inclusion on the SPDX License List, you can use the 'LicenseRef-[idstring]' tag to identify your license, as per the [SPDX specification, clause 10](https://spdx.github.io/spdx-spec/v2.3/other-licensing-information-detected/)

# Accepted License Process

If accepted, two files will be need to be prepared for each license or exception: a plain text test file and an XML file, as explained below. 
* NOTE: It is expected that the pull request is prepared by the license submitter, with help from experienced members of the SPDX-legal team, as needed.
* NOTE: Both files must use the licenseId (short identifier) as the filename. The XML and test .txt files must be named identically using that licenseId value. For instance, if you're adding the K-9 Robotic Dog Hardware License with a licenseId of K-9RDHL, you will have an XML file named K-9RDHL.xml and a test .txt file named K-9RDHL.txt. The licenseId value will be identified in the license decision issue summary.

1. __Create the XML file__: There are two ways to created the files for the new license. Either way, you will need to first ensure you have created a clone/fork of the license-list-XML repository (do not rename the fork). 
    * If the license was sumbitted via the [SPDX Online Tool](https://tools.spdx.org/app/license_requests/), you can use the `edit the XML` function for the license request in the SPDX Online Tool to create the XML file and a pull request, as described in [this video](https://drive.google.com/file/d/1EGyD1_hVrhMMeU2K7tsiaWlmCX7rJBbV/view?usp=share_link). 
    * Alternatively, you can use Git to clone (fork) the license-list-XML repository (repo), make the edits on your clone of the repo, then send a pull request, as described in [this document](git-usage.md) and [this video](https://drive.google.com/file/d/10deXLZWNvWl7zjKczf-DuJx3oooN_7CI/view?usp=share_link).
    * Either way, [XML fields](xml-fields.md) is helpful for specific guidance on the implementing the XML tags.

1. __Create the text file__: In the same pull request where you created the XML file, create a new .txt file in the `test/simpleTestForGenerator/` directory of your clone or branch of the license-list-XML repo. This must be UTF-8 encoded. Special characters such as smart quotes should be avoided. Do try to keep formatting elements such as section indentation, _using spaces to make the indentation rather than using tabs_.
    * Use the canonical text for the license. There should be a link to this in the submission issue.
    * Copy the text of the license and add it to an appropriately named .txt file.

3. An SPDX-legal team member will review and merge the PR, unless changes are needed.

4. The new license/exception will be officially added and appear on the SPDX License List website for the next release of the SPDX License List.

NOTE: As per the [SPDX License List Release Process](release-process.md), when a new license or exception is accepted to add to the SPDX License List and its corresponding PR is merged, the text and ID will not immediately appear on the SPDX License List website until a release. In the interim, the new license will appear on the license list preview site at https://spdx.github.io/license-list-data/. 



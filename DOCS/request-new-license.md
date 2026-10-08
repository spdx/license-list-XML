
The SPDX Legal Team appreciates proposals for new licenses or exceptions to be added to the SPDX License List.  
Please review the process below and stay engaged with your request.

# Request a new license or exception 

1.  Review the [license inclusion principles](license-inclusion-principles.md). Please refrain from submitting licenses that clearly do not meet these principles, and make sure the license isn't already on the SPDX License List. This [guidance](license-match.md) may help.

2. Submit your request via one of the following ways. Please see the [explanation of the fields contained on the list](license-fields.md) for reference:
     1.  the SPDX Online Tool [Submit New License](https://tools.spdx.org/app/submit_new_license/) (preferred method) using the guidance provided there.
     1. You may use the new license request Issue template.
     1. If you do not have a Github account and are not amenable to creating one, then you may join and send you submission to the spdx-legal mailing list.
        
NOTES:
* You must have a Github account in order to use options (i) and (ii).
* For options (ii) and (iii) You need to provide *all* of the information as per the form or issue template. Incomplete submissions waste time and may be closed.

# Review Process

1. The SPDX Legal Team will review any submissions for new licenses or exceptions via comments in the Github issue and on the bi-weekly calls as needed. Please follow your issue and participate in the discussion or answer any request for additional information.

   New licenses that do not fall under [Fast-track]([ADD LINK](https://github.com/spdx/license-list-XML/blob/main/DOCS/license-inclusion-principles.md)) inclusion may be approved if 3 SPDX-legal team members (at least 1 lawyer) agree that the license meets the [license inclusion principles](license-inclusion-principles.md) AND there is no objection raised from the greater SPDX-legal community within the Github issue comments. If there are objections, then the issue may be labeled "discuss on legal call" and discussed on an upcoming bi-weekly call.
  
3. Issues will be labeled either `new license/exception: Accepted` or `new license/exception: Not Accepted` as appropriate with an explanation and the Issue closed for the latter case.

NOTE: If submitters are unresponsive for several months, the issue may be closed without a decision.

NOTE: If a license is *not* accepted for inclusion on the SPDX License List, you can use the 'LicenseRef-[idstring]' tag to identify your license, as per the [SPDX specification, clause 10](https://spdx.github.io/spdx-spec/v2.3/other-licensing-information-detected/)

# Accepted License Process

If accepted, two files will be need to be prepared for each license or exception: a plain text test file and an XML file, as explained below. It is expected that the pull request is prepared by the license submitter, with help from experienced members of the SPDX-legal team, as needed.

1. __Create the XML and .txt files__: Both files must use the `licenseId` (short identifier) as the filename. The XML and test .txt files must be named identically using that licenseId value. For instance, if you're adding the K-9 Robotic Dog Hardware License with a licenseId of `K-9RDHL`, you will have an XML file named `K-9RDHL.xml` and a test .txt file named `K-9RDHL.txt`. The licenseId value will be identified in the license decision issue summary.

    There are two ways to created the files for the new license. Either way, you will need to first ensure you have created a clone/fork of the license-list-XML repository (do not rename the fork). 
    1. If the license was sumbitted via the [SPDX Online Tool](https://tools.spdx.org/app/license_requests/), you can use the `edit the XML` function for the license request in the SPDX Online Tool to create the XML file, create the .txt file automatically, and create a pull request. 
    2. Alternatively, you can use Git to clone (fork) the license-list-XML repository (repo), make the edits on your clone of the repo, then send a pull request, as described in [this document](git-usage.md).

NOTES: 
* See [XML fields](xml-fields.md) for specific guidance on the implementing the XML tags.
* The .txt file must be in the same PR and located in the `test/simpleTestForGenerator/` directory of your clone or branch of the license-list-XML repo. This must be UTF-8 encoded. Special characters such as smart quotes should be avoided. Do try to keep formatting elements such as section indentation, _using spaces to make the indentation rather than using tabs_.
    * Use the canonical text for the license. There should be a link to this in the submission issue.
    * Copy the text of the license and add it to an appropriately named .txt file.

2. An SPDX-legal team member will review and merge the PR, unless changes are needed.

3. The new license/exception will be officially added and appear on the SPDX License List website for the next release of the SPDX License List.

As per the [SPDX License List Release Process](release-process.md), when a new license or exception is accepted to add to the SPDX License List and its corresponding PR is merged, the text and ID will not immediately appear on the SPDX License List website until a release. In the interim, the new license will appear on the license list preview site at https://spdx.github.io/license-list-data/. 



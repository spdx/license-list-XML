# New License Workflow

> ⚠️ **NOTA BENE:** A GitHub account is required for the New License Workflow. If you do not have a GitHub account yet, you must [create one](https://github.com/join) (for free) to continue with the workflow.

This document provides guidance and checklists for SPDX legal team members who are assigned to shepherd a new license request.  

The instructions here assume the requestor has already submitted the new license/exception request via the [SPDX online tools](http://13.57.134.254/app/).

New license requests are to be assigned to an SPDX legal team member and that person is responsible for following the request through to its final determination.  Make sure to add yourself as the Assignee in the license request issue here on GitHub, add the [label](https://github.com/spdx/license-list-XML/labels) `new license/exception request`, and add the appropriate release milestone to the issue.

## Things to check for initial request:

1. Is the license or exception already on the SPDX License List?  Has it been submitted and rejected previously? (If yes, go to "If license not accepted")
2. Is the license or exception similar enough to an existing license or exception that additional markup could accomodate a match and there is no need to add the license?
    1. Use Alan’s diff tool to compare to existing licenses.
    2. If it’s a case that additional markup would create match, then may want to discuss with legal team to ensure markup is non-substantive or differences in text do not alter legal meaning (if so, this cuts towards adding a new license). For more on this see the [Matching Guidelines](https://spdx.org/spdx-license-list/matching-guidelines), guideline #2 in particular.
    3. If additional markup can accommodate the license, then the license does not need to be added: inform the requestor, comment on the issue as such, then create a PR for the existing license with the additional markup, and close issue once the PR has been merged.

2. If the submitter is not the license author or steward, ask for that contact or try to find that person or organization to make them aware the license has been submitted.
3. Check the submission for any other missing information, e.g., working URL, examples of use, full text, standard header, etc. See the Field definitions on Overview page for assistance.
Ask the submitter for any additional info needed, preferably via the Github issue, if possible. Record any updates there.
4. Review the following, bring any questions to legal team:
    1. Is this an open source license?
    2. Is the short identifier unique? Does this license have a short identifier that is used elsewhere already (e.g., Fedora)?
    3. Does this license need markup for matching (omitable or replaceable text)?
    4. Record all notes in Issue
5. If the legal team determines that more information is needed, the information should be requested in the Issue, tagging the requester and/or steward(s) and add the [label](https://github.com/spdx/license-list-XML/labels) `new license/exception: waiting for submitter`. If a response is not received within a reasonable amount of time, a follow-up request should be sent. If a response is not received to either request the next release (or two, if close to a release at first correspondance), the Issue will be closed.

## If license not accepted:

6. If the license/exception has not been accepted (for whatever reason, including it is already represented on the license list), make a note in the issue as to why, add the [label](https://github.com/spdx/license-list-XML/labels) to `new license/exception: Not accepted`, inform the submitter, update the issue as needed, and close.

## If license is accepted:

If the license/exception is accepted, make a note in the issue, add the [label](https://github.com/spdx/license-list-XML/labels) `new license/exception: Accepted`. 

The final step is to create the license XML and test .txt files.

While you can do this using the [SPDX Online tools](https://spdxtools.sourceauditor.com/), we recommend you [clone (fork) the license-list-XML repository (repo)](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-forks), make the edits on your clone of the repo, then [send a pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork). This will be necessary for the test .txt file regardless, as the SPDX Online tools do not yet support adding a test .txt file.

The following steps assume you're working from a clone of the repo, but we have some basic steps afterward if you'd like to edit the XML using the SPDX Online tools.

> ⚠️ **NOTA BENE:** All files rely on the `licenseId` (short identifier) for the license. The XML and test .txt files must be named identically using that `licenseId` value. For instance, if you're adding the _K-9 Robotic Dog Hardware License_ with a `licenseId` of _K-9RDHL_, you will have an XML file named `K-9RDHL.xml` and a test .txt file named `K-9RDHL.txt`.

### Add the test .txt file

1. The test files are in the `test/simpleTestForGenerator/` directory of your clone of the license-list-XML repo.
1. Locate the canonical text for the license. There should be a link to this in the issue, but if there isn't please ask for it from the license steward. Don't proceed until you have confirmed that you have the canonical text.
1. Copy the text of the license and add it to an appropriately named .txt file (see above for naming guidelines). This must be plaintext and ASCII/Unicode with no special characters such as smart quotes. Do try to keep formatting elements such as section indentation, _using spaces to make the indentation rather than using tabs_. For example, here's one of many indented sections in the [CC-BY-NC-ND-3.0-IGO.txt file](../test/simpleTestForGenerator/CC-BY-NC-ND-3.0-IGO.txt):
```
1. Definitions

    a. “IGO” means, solely and exclusively for purposes of this License, an organization established by a treaty or other instrument governed by international law and possessing its own international legal personality. Other organizations established to carry out activities across national borders and that accordingly enjoy immunity from legal process are also IGOs for the sole and exclusive purposes of this License. IGOs may include as members, in addition to states, other entities.
```
1. Save the file and [commit it](https://docs.github.com/en/github/committing-changes-to-your-project) to your clone of the repository.

That's it! The test .txt file is now ready to go and you can move on to the XML file. It's slightly trickier than the test .txt file, but not much (at least not in the basic case that we cover here).

### Add the XML file

1. The license XML files are in the `src` directory. If the license you're working on does not yet have an XML file there, find the XML file for a similar license then copy it to be the basis of the new license XML file. For instance, for the _K-9 Robotic Dog Hardware License_ (henceforth referred to by its licenseId), you could copy the _CERN Open Hardware License v1.1_ file, `CERN-OHL-1.1.xml` to `K-9RDHL.xml`, then go from there.
1. Set the attributes in the `license` tag:
    * licenseId: Set to the licenseId for that license. This must match the licenseId used for to name both the XML and test .txt files.
    * name: The canonical name of the license. This must match the name of the license in the test .txt file. The value set in this attribute is what will appear in the [SPDX License List](https://spdx.org/licenses/).
    * isOsiApproved: Set to `true` if the license has been [approved by the Open Source Initiative](https://opensource.org/licenses) and `false` else.
    * listVersionAdded: Set to the [SPDX License List Version](https://github.com/spdx/license-list-XML/milestones) in which this license is being added. This version is set in the Milestone assigned to the issue.
    * If you copied the XML file of another license, remove any attributes used for that license but not needed for this new one. 

### Send the pull request for the XML and .txt files

1. FOO: add this

### Editing the XML file using the SPDX Online tools

1. Go to SPDX Online tools and to [License Requests](http://13.57.134.254/app/license_requests/); click on your license and “edit XML”. Review XML file - make sure to include or check:
        1. The current XML output does not implement some of XML tagging and may mark every new line with a paragraph tag depending on input. If this has happened, it may be more efficient to re-submit the license text, using a wrapped text version.
        1. Make sure to include listVersionAdded= and the correct license list version number for the upcoming release
        1. Check for a standard license header
        1. Check if there should be any Notes based on Notes field descripiton in [link](Overview page)
        1. Check that we have a working URL for the license text in the wild. If using a link in GitHub, include a link to a specific commit
        1. Check all the XML formatting: the current XML output does not insert the bullet or list tags. Use a previously submitted license as reference for how to format
        1. If you have questions about text that could be optional or could be replaceable, add a comment to the PR, once made or add a reviewer to check it
    2. Before submitting the PR, you may want to run the test suite locally to catch any errors when comparing the XML against the test .txt file. Typically you can do this by running “make validate-canonical-match” from your checked-out copy of the license-list-XML repo.
    3. Once the XML is done, “submit changes” in the tool, which will create a new PR in the repo. Tag the PR to be reviewed by at least one other member of the legal team before merging.
    4. Once the PR is created in the repo, add a .txt file for the license in the test/simpleTestForGenerator directory
    4. Check to see if the PR passes the automated test suite on check-in.  If it does not pass, evaluate the cause and resolve it.  If you need assistance, contact one of the technical leads (@goneall or @zvr) for assistance.
    4. Once review has been completed and there are no further question, merge PR, and close issue.

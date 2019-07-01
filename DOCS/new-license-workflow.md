This document provides guidance and checklists for SPDX legal team members who are assigned to shepherd a new license request.  This instructions here assume the requestor has already submitted the new license/exception request via the [SPDX online tools](http://13.57.134.254/app/).

New license requests are to be assigned to an SPDX legal team member and that person is responsible for following the request through to its final determination.  Make sure to add yourself as the Assignee, add the label “new license/exception request”, and the appropriate release milestone to the issue.

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
5. If the legal team determines that more information is needed, the information should be requested in the Issue, tagging the requester and/or steward(s) and add the label “new license/exception: waiting for submitter”. If a response is not received within a reasonable amount of time, a follow-up request should be sent. If a response is not received to either request the next release (or two, if close to a release at first correspondance), the Issue will be closed.

## If license not accepted:
6. If the license/exception has not been accepted (for whatever reason, including it is already represented on the license list), make a note in the issue as to why, add the label to “new license/exception: Not accepted”, inform the submitter, update the issue as needed, and close.

## If license is accepted:
7. If the license/exception is accepted, make a note in the issue, add the label “new license/exception: Accepted” and create the XML and .txt file:
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

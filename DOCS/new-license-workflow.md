This document provides guidance and checklists for SPDX legal team members who are assigned to shephard a new license request.  It assumes that the requestor has already submitted the new license/exception request via the SPDX online tools or has otherwise created a GitHub issue for the request. 

New license requests are to be assigned to an SPDX legal team member and that person is responsible for following the request through to its final determination.  Make sure to add yourself as the Assignee, add the label “new license/exception request”, and the appropriate release milestone to the issue

Things for the assigned team member to check:
1. Is the license or exception already on the SPDX License List?  Or is it similar enough to an existing license or exception that additional markup could accomodate a match and there is no need to add the license? Has it been submitted and rejected previously?
    1. Use Alan’s diff tool to compare to existing licenses.
    2. If it’s a case of additional markup, then may want to discuss with legal team to ensure markup is non-substantive or differences in text do not alter legal meaning (if so, this cuts towards adding a new license). For more on this see the Matching Guidelines, guideline #2 in particular.
    3. If the license is already on the list, then the license does not need to be added: inform the requestor, comment on the issue as such, and close issue.
    4. If additional markup can accommodate the license, then the license does not need to be added: inform the requestor, comment on the issue as such, create a PR for the existing license with the additional markup, and close issue once the PR has been merged.
2. If the submitter is not the license author or steward, ask for that contact or try to find that person or organization to make them aware the license has been submitted.
3. Check the submission for any other missing information, e.g., working URL, examples of use, full text, standard header, etc. See the Field definitions on Overview page for assistance.
Ask the submitter for any additional info needed, preferably via the Github issue, if possible. Record any updates there.
4. Review with legal team for acceptance to the list:
Is this an open source license?
Is the short identifier unique? Does this license have a short identifier that is used elsewhere already (e.g., Fedora)?
Does this license need markup for matching (omitable or replaceable text)?
Record all notes in Issue
5. If the legal team determines that more information is needed, the information should be requested in the Issue, tagging the requester and/or steward(s) and add the label “new license/exception: waiting for submitter”. If a response is not received within a reasonable amount of time, a follow-up request should be sent. If a response is not received to either request the next release (or two, if close to a release at first correspondance), the Issue will be closed.
6. If the license/exception has not been accepted, make a note in the issue as to why, add the label to “new license/exception: Not accepted”, inform the submitter, update the issue as needed, and close.
7. If the license/exception is accepted, make a note in the issue, add the label “new license/exception: Accepted” and create the XML and .txt file:
    1. Go to SPDX Online tools and to License Requests; find your license and “edit XML”. Review XML file - make sure to include or check:
        1. Make sure to include listVersionAdded= and the correct license list version number for the upcoming release
        1. Check for a standard license header
        1. Check that we have a working URL for the license text in the wild. If using a link in GitHub, include a link to a specific commit
        1. Check all the XML formatting, especially for bulleted/numbered sections
        1. If you have questions about text that could be optional or could be replaceable, add a comment to the PR, once made or add a reviewer to check it
    2. Before submitting the PR, you may want to run the test suite locally to catch any errors when comparing the XML against the test .txt file. Typically you can do this by running “make validate-canonical-match” from your checked-out copy of the license-list-XML repo.
    3. Once the XML is done, “submit changes” in the tool, which will create a new PR in the repo. Tag the PR to be reviewed by at least one other member of the legal team before merging. 
    4. Once review has been completed and there are no further question, merge PR, and close issue.

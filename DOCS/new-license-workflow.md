This file is outdated or in process of getting updated or moved!

### Test locally

When you send the pull request (below), our [CI/CD](https://en.wikipedia.org/wiki/CI/CD) tool will run all of the tests to make sure everything is OK. However, often it's much faster to test things locally first. There are three ways to do this:

#### Use your browser to test the XML file

Most web browsers "speak" XML, which means they're a quick and easy way to tell whether you have valid XML in your file. If you've messed something up (forgotten a closing tag, for instance), the browser will give you an error. If everything is A-OK, the browser will show you your XML file.

To test this, either point your browser at the XML file in your file system using [`file://`](https://en.wikipedia.org/wiki/File_URI_scheme) or drag/drop the XML file onto your browser window.

Of course, keep in mind that this only tests that the XML file is valid XML. The next tests below can be used to check whether the XML file correctly matches to the test text file.

#### Run all tests on your machine

You can run (on your local machine) the same tests that the CI/CD tool does automatically when you make a pull request. They might run a little faster on your machine, and of course this doesn't require approval like the CI/CD pipeline does if you're a first-time contributor to the License List!

This requires that you're familiar with the command line and ensuring that script dependencies are all installed. Learning these things is left as an exercise for the reader.

1. Change to the directory where you've cloned the `license-list-XML` repo
2. Run `make validate-canonical-match`
3. Go make a cup of tea or something ☕️, because this will take a few minutes to complete

#### Test just the one license you added

If you don't feel like a cup of tea right now, you can run the `make validate-canonical-match` process against a single file instead of the entire corpus of licenses:

1. Change to the directory where you've cloned the `license-list-XML` repo
2. Run `./test-one-license licenseId`, replacing (of course) the `licenseId` with (naturally) the licenseId of the license in question
3. Don't make that cup of tea, since you won't have time

### Handling Duplicate Licenses

The CI/CD pipeline will fail if it detects an existing license with matching license text.  If this occurs, manually review the duplicate license.  If this is expected (e.g. if the duplicate license is a deprecated version of the same license), add the following to the [expected-warnings](../expected-warnings) file:

```
,"Duplicates licenses: DUPLICATE_LICENSE_ID, MY_LICENSE_ID","Duplicates licenses: MY_LICENSE_ID, DUPLICATE_LICENSE_ID"
```

where `DUPLICATE_LICENSE_ID` is the license ID of the duplicate license and `MY_LICENSE_ID` is the license ID of the license you are adding.

If the duplicate license is not expected and you believe the licenses are indeed different, review the license XML for both licenses for any `<Optional>...` or `<Alt ...` tags that may cause a match.

### Send the pull request (PR) for the XML and .txt files

You're nearly done! All that's left is for you to tell the team you're done and the work is ready for review and merging.

To do that, [send a pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork) (commonly known as a PR) to the project.

If you've never sent a PR before, or if you hit any problems, please let us know! We'll help you with the process so you can successfully contribute to the license list.

If the PR will take care of the issue's request, then in the PR description (not the PR title or comments, and not the commit message) you should include a line that says `Fixes #`, with the issue number immediately following the hash sign. That way, when the PR is merged, GitHub will automatically close the issue as well.

After you send your PR, the team will have a look and provide feedback. It might be that more changes are needed. If that's the case, simply make the changes in your clone of the repo and then commit them. Your PR will automatically update with the changes, so you won't have to do anything special.

Once everything looks good, the team will merge your PR into the main list.

🍾 _Voila_! 🍾 You've just landed a patch in an open source project. Congratulations!

### Editing the XML file using the SPDX Online tools

The [SPDX Online tools](https://tools.spdx.org/) are an option for editing the XML file but currently the tools can't help you add a test .txt file. Hopefully we'll be able to add that functionality in the future, but for now we recommend you use the "clone and edit" option detailed above when adding a new license. However, should you choose to try the online tools, here are some instructions:

1. Go to SPDX Online tools and to [License Requests](https://tools.spdx.org/app/license_requests/); click on your license and “edit XML”. Review XML file - make sure to include or check:
    1. The current XML output does not implement some of XML tagging and may mark every new line with a paragraph tag depending on input. If this has happened, it may be more efficient to re-submit the license text, using a wrapped text version.
    2. Make sure to include listVersionAdded= and the correct license list version number for the upcoming release
    3. Check for a standard license header
    4. Check if any notes should be added (see the field description in the [DOCS/license-fields](license-fields.md) document for more information)
    5. Check that we have a working URL for the license text in the wild. If using a link in GitHub, include a link to a specific commit
    6. Check all the XML formatting: the current XML output does not insert the bullet or list tags. Use a previously submitted license as reference for how to format
    7. If you have questions about text that could be optional or could be replaceable, add a comment to the PR, once made or add a reviewer to check it
2. Before submitting the PR, you may want to run the test suite locally to catch any errors when comparing the XML against the test .txt file. Typically you can do this by running “make validate-canonical-match” from your checked-out copy of the license-list-XML repo.
3. Once the XML is done, “submit changes” in the tool, which will create a new PR in the repo. Tag the PR to be reviewed by at least one other member of the legal team before merging.
4. Once the PR is created in the repo, add a .txt file for the license in the test/simpleTestForGenerator directory
5. Check to see if the PR passes the automated test suite on check-in.  If it does not pass, evaluate the cause and resolve it.  If you need assistance, contact one of the technical leads (@goneall or @zvr) for assistance.
6. Once review has been completed and there are no further question, merge PR, and close issue.

##### <a href="#top"> Back to Top</a>

<br>

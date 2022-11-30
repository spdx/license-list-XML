# SPDX License List Release Process

## Overview

The SPDX License List is released on approximately a quarterly basis (every three months), staggered one month from the standard calendar quarters. We aim to push a release shortly following the end of January, April, July and October.

When a new license is accepted to add to the SPDX License List and its corresponding PR is merged, the license text and ID does _not_ immediately appear on the [SPDX License List website](https://spdx.org/licenses). The ID will not appear until a release is pushed on the cadence described above and pursuant to the steps described below.

In the interim, the new license will appear on the license list preview site at https://spdx.github.io/license-list-data/. Note that this is only a preview site and does NOT represent an officially-released version of the license list.

Requesters may be uncertain as to whether they should use a newly-added license identifier, during the period between merging the PR and the subsequent license list release. Until the next release is pushed, the license identifier will not officially be included on the SPDX License List (and tooling that uses the License List likely will not recognize the new ID). While it is possible that in extraordinary circumstances a newly-added ID could be modified or removed prior to the release, the SPDX Legal Team aims to avoid doing so unless necessary.

## Steps for pushing a release

* Step 1: Finalize release issues and PRs
* Step 2: Pull and tag release versions
* Step 3: Push files to website

## Step 1: Finalize release issues and PRs

### Close issues and merge or close PRs

* Filter issues to the current milestone, and ensure all are closed or moved to a later milestone
* Similarly for PRs -- for each, either merge it, close it, or move it to a later milestone
* Issues and PRs that are NOT merged (e.g. spam, etc.) should not be tagged with the release milestone number

### Draft release notes

* Add a new release text section to the top of [RELEASE-NOTES.md](https://github.com/spdx/license-list-XML/blob/main/RELEASE-NOTES.md)
* Mimic the same pattern as the prior release notes, listing each license or exception added in this release, together with brief notes about any other significant changes in this release
* Create compare link by changing tag numbers in previous release
* The PR to add the release notes should be the last PR merged before the release is tagged
* After merging the PR, wait for the CI checks to complete before going on to the next step!

## Step 2: Pull and tag release versions

Note: the following assumes that your local copies of the repos have `upstream` defined as the `github.com/spdx` branches. Use the current milestone in place of `3.19` throughout the steps below.

### Pull and tag release in license-list-XML

* Use `git pull` to pull the current version of the license-list-XML repo to your local disk:
* Tag the release: `git tag -a v3.19 -m "version 3.19 of the SPDX License List"`
* Push tag to upstream: `git push upstream v3.19`
* After pushing the tag, wait for the CI check to complete before going on to the next step!

### Create the GitHub release in license-list-XML

* In the [list of license-list-XML tags](https://github.com/spdx/license-list-XML/tags), click on the "..." on the right side of the tag, and select "Create release"
* Fill in content:
  * title: `Version 3.19 of the SPDX License List`
  * notes: copy from MarkDown for [RELEASE-NOTES.md](https://raw.githubusercontent.com/spdx/license-list-XML/main/RELEASE-NOTES.md)
* Click "Publish Release"

### Pull and tag release in license-list-data

* Make sure the CI checks from pushing the tag for license-list-XML have completed!
* Use `git pull` to pull the current version of the license-list-data repo to your local disk
* Tag the release: `git tag -a v3.19 -m "version 3.19 of the SPDX License List"`
* Push tag to upstream: `git push upstream v3.19`
* After pushing the tag, wait for the CI check to complete before going on to the next step!

### Create the GitHub release in license-list-data

* Same steps as above for license-list-XML
* Note shortened text used for release description for [license-list-data releases](https://github.com/spdx/license-list-data/releases)

## Step 3: Push files to website

Note: the following requires you to have access credentials and the scripts used to upload content to the AWS S3 bucket for the SPDX License List website. Currently @swinslow has these credentials and manages releases. [Linux Foundation IT support](https://support.linuxfoundation.org) should be able to provide access to other SPDX maintainers if needed.

This also assumes that you have used the AWS S3 scripts to make a local copy of the S3 website, at a location which is referred to as `S3DIR` below.

### Prepare archive files

* Create archive files in the `website/` subdirectory in the license-list-data repository named `htmlfiles-v3.19/`
* In your local copy of the spdx.org S3 bucket, create a new subdirectory `S3DIR/licenses/archive/archived_ll_vx.xx` where `x.xx` is the version of the PREVIOUSLY PUBLISHED license list being replaced,
* Copy (NON-RECURSIVELY) the files from `S3DIR/licenses` to `S3DIR/licenses/archive/archived_ll_vx.xx`.
  * IMPORTANT NOTE: Do NOT do a recursive copy, only copy the files and do NOT copy any subdirectories.
* Edit the file `S3DIR/licenses/archive/archived_ll_vx.xx/index.html`. Add the line below, immediately prior to the line `<h1>SPDX License List</h1>`:
  * `<p style="color: #FA0207;"><strong>THIS IS NOT THE CURRENT VERSION OF THE SPDX LICENSE LIST. PLEASE USE THE CURRENT VERSION, LOCATED AT: <a href="http://spdx.org/licenses/">http://spdx.org/licenses/</a></p>`

### Copy new files

* Copy (NON-RECURSIVELY) the files from `license-list-data/website/*` to `S3DIR/licenses/`
  * IMPORTANT NOTE: Do NOT do a recursive copy, only copy the files and do NOT copy any subdirectories.
* Confirm that the files were correctly copied by (1) checking `index.html` for the new release version number, and (2) checking for the presence of a couple of new license files.

### Push files to the website

* (Optional) Do dry run to check what will be updated: from `S3DIR`: `make sync-licenses-dryrun`
* Push the files: from `S3DIR`: `make sync-licenses`
* Check https://spdx.org/licenses to confirm that the update has completed
  * Note: May need to refresh / try on a different browser if the prior version is cached

### Notify the mailing list

* Send an email to the spdx-legal mailing list announcing the release, using content from [RELEASE-NOTES.md](https://github.com/spdx/license-list-XML/blob/main/RELEASE-NOTES.md), in a format similar to https://lists.spdx.org/g/Spdx-legal/message/3201

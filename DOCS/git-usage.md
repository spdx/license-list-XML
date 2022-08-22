# Git usage guidance

## Purpose

Some contributors to the SPDX License List may be unfamiliar with Git command-line usage and practices. The GitHub UI enables contributions without needing to use the command line, and this is sufficient for many edits.

However, using Git via the command line can be more efficient, and can make it easier to test your license templates and edits before submitting a PR.

This document provides some guidance for setting up and using Git on your own system to contribute to the SPDX License List on GitHub. Suggestions and edits to this document are greatly welcomed!

## Prerequisites

This guide assumes that you've already done the following:

* set up a GitHub account
* forked the **upstream** repo (https://github.com/spdx/license-list-XML) into your own **personal** repo (e.g., https://github.com/swinslow/license-list-XML)
* [installed Git](https://github.com/git-guides/install-git)
* opened a text terminal program
  * Linux: if you aren't sure, look for a program called something like "Terminal", "xterm" or "gnome-terminal"
  * MacOS: there is a built-in text terminal at /Applications/Utilities/Terminal
  * Windows: start the 'Git Bash' program, which you should be able to find in your Start Menu
* selected and installed a text editor
  * [Visual Studio Code](https://code.visualstudio.com) is a common option.
  * [Vim](https://www.vim.org) or [Emacs](https://www.gnu.org/software/emacs/) if you're feeling adventurous...
* Install Java version 11 or higher. See the [OpenJDK Installation Instructions](https://access.redhat.com/documentation/en-us/openjdk/11) for details. Note that there are other open source and commercial Java runtimes and development kits available.

For this guide, I'll use my account name [**swinslow**](https://github.com/swinslow) wherever you should use your own account name.

## First-time setup

There's some initial setup you'll need to do the first time on your local system. This is a one-time thing, not every time you do a new license, and it involves the following:
* set up an SSH key, for the terminal to communicate securely with GitHub.
  * The process for this is a bit annoying, but fortunately it's a one-time setup for anything you'll do on GitHub.
  * The instructions are at https://docs.github.com/en/authentication/connecting-to-github-with-ssh; the steps are a bit different depending if you're on Windows / Mac / Linux.
* After you've done that, figure out where on your hard drive you want to store the repo, and in the terminal, change to that directory.
* Clone your **personal** repo to that location:
  * In the personal repo on GitHub, click on the green "Code" button; make sure "SSH" is selected; and hit the "copy" button to copy the address; it should start with `git@github.com:...`: ![screenshot of repo clone view in GitHub UI](/DOCS/images/git-usage-clone-ui.png)
* In your terminal, type `git clone ADDRESS`, where ADDRESS is the `git@github.com...` line that you copied from GitHub
* After it finishes, change into that directory: `cd license-list-XML`
* You'll want to have two "**remotes**" set up. A "remote" is a reference to a repo on GitHub.
  * Because you cloned it from your personal repo, it automatically sets up a remote called "**origin**" that points to your personal repo. You can see it listed by typing: `git remote -v`
  * You'll create a second remote called "**upstream**" that points to the primary, upstream SPDX repo. Type the following to create it: `git remote add upstream https://github.com/spdx/license-list-XML.git`
  * If you type `git remote -v` again, you should see both "origin" and "upstream" listed now (with separate "fetch" and "push" entries for each; don't worry about that).

After all of this is done, you should be all set to start adding new licenses.

## Adding a new license

For the following steps, we'll assume that you're adding a new license called the XYZ license.

1. In the terminal, make sure you're starting on the main branch, and that it's up to date with the upstream's main:
  * **Change to the main branch**: `git checkout main`
  * **Pull in any updates from upstream**: `git pull upstream main`
2. Now that it's synced with upstream, you'll create a branch into which you'll commit your changes. I'm calling it "xyz" here for the new license, but you can name it anything unique.
  * **Create new branch**: `git checkout -b xyz`
3. When the new branch is created, git will also automatically change it so that the new branch is your working branch. You can type `git status` to see your current working branch: ![screenshot from typing `git status` on clean repo](/DOCS/images/git-usage-git-status-clean.png)
4. Now, since you're on the new branch, go ahead and create the new files in your text editor for the license you're adding. The two files for the "XYZ" license would be:
  * license template XML file: `src/XYZ.xml`
  * test text file: `test/simpleTestForGenerator/XML.txt`
5. After the files are created and saved, the files exist on your hard drive, but they are not yet saved to the new branch. If you type `git status` again, git sees the files are there but are not currently tracked by Git: ![screenshot from typing `git status` with untracked files](/DOCS/images/git-usage-git-status-untracked.png)
6. The next step is to "**add**" the files, so that Git will start tracking them. The easiest way to do this is to specify "src" and "test" in the add command, which would add any new files that are found in the "src/" or "test/" directories:
  * **Add the files to be staged**: `git add src test`
7. Now the files are "staged", but confusingly they haven't yet been committed to the branch. If you type `git status` again it will tell you this: ![screenshot from typing `git status` with added files](/DOCS/images/git-usage-git-status-added.png)
8. Next, you'll "commit" the changes, which actually inserts them into your local branch:
  * **Commit the files**: `git commit -m "Add XYZ license"`
  * In the commit command, the `-m` flag lets you add a one-line message to the commit. If you omit `-m` and the quoted message, it will take you to a text editor where you can type a longer message.
9. At this point, your local copy of the "xyz" branch is 1 commit ahead of the "main" branch, because you've created and inserted the commit with these files into the xyz branch. The next thing you'll do is push the "xyz" branch up to your personal repo on GitHub:
  * **Push to personal (origin) repo on GitHub**: `git push origin xyz`
  * If you go to your personal GitHub repo, it will alert to you that the branch was pushed: ![screenshot of pushed branch on GitHub UI](/DOCS/images/git-usage-push-ui.png)
10. Finally, the last step is to create a Pull Request from the "xyz" branch in your personal repo, into the "main" branch in the main upstream repo:
  * **Initiate the pull request**: click the "Compare and pull request" button shown above
  * From there, it will show you the same Pull Request editor screen that you've seen before in the GitHub UI. Edit the PR message if desired, and when you're ready, click "Create pull request".

Whew.  :)  Congrats on getting through all of this!

## Running the license template checks locally

One of the real advantages of doing all of this is that it lets you run the license template checks locally, before you create the PR in step 10.

That way, if there are errors, you can fix them locally before creating the PR. If you are using the GitHub UI, you'd have to keep pushing new commits to re-run the tests without knowing whether they will pass.

To run the license template checks on your local system, after creating the license template and test text files in step 4 above, run either one of the following commands:

* **Test all licenses**: `make validate-canonical-match`
  * note that this checks _all_ licenses and exceptions, so this will take a while to run!
* **Test a single license**: `./test-one-license xyz`
  * note that the dot-slash (`./`) are necessary here, and that `xyz` should be replaced with the ID of the single license that you want to test

This will compare the license(s) to the test text file(s) and report any errors that are found. If errors are encountered, then you can correct the errors, re-test and make sure you get a passing test, before continuing with step 5.

## Optional: Consider including a DCO Signed-off-by statement

Many open source projects use the [Developer's Certificate of Origin (DCO)](https://developercertificate.org/) sign-off process as part of their contribution mechanisms.

Although the SPDX License List does not currently require DCO sign-offs, you might consider including a DCO "Signed-off-by:" statement in your commits. This helps to act as an assertion that you have the right to contribute the materials that you are contributing to the repo.

(Please note that DCO sign-offs are different from [cryptographic signing of commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits).)

If you want to include DCO sign-offs in your commit messages, you can do the following:

1. **One-time setup: set up your Git config**: edit your Git configuration file to include the following, with your details:
```
[user]
        name = YOUR NAME
        email = YOUR@EMAIL.ADDRESS
```
2. **Include -s in commits**: Now, whenever you type `git commit`, also include a `-s` in the command, such as the following: `git commit -s -m "Add XYZ license"`

After Git is configured as shown above, `git commit -s` will automatically include the correct `Signed-off-by:` line with your name and email address in the commit message.

## Other Resources

There are several (better) guides to using Git and GitHub out there. Here are a couple that might be useful, if you want to understand better what's going on:
* The free, CC-BY-NC-SA-3.0 licensed [Pro Git book](https://git-scm.com/book/en/v2) is a thorough guide to using the Git command line.
* The [GitHub Quickstart](https://docs.github.com/en/get-started/quickstart/hello-world) is essential reading for general use of GitHub.
* GitHub has a [cheat sheet for using the Git command line](https://training.github.com).
* Some users might find it easier to use the [GitHub CLI](https://cli.github.com) or [GitHub Desktop](https://docs.github.com/en/desktop).
  * If you're using one of these, the workflow process is likely similar, but the commands you'll use will be different -- see the GitHub docs for more guidance.

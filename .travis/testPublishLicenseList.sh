#!/bin/bash
# NOTE: $GITHUB_TOKEN must be defined as an external system variable (e.g. in the Travis-CI respository settings https://docs.travis-ci.com/user/environment-variables#Defining-Variables-in-Repository-Settings)
#TODO Update user and email before PR to spdx/license-list-XML
GIT_USERNAME="License Publisher (maintained by Gary O'Neall)"
GIT_EMAIL="gary@sourceauditor.com"
LICENSE_DATA_REPO="https://github.com/goneall/license-list-data.git"
LICENSE_DATA_REPO_NO_SCHEME="${LICENSE_DATA_REPO#*://}"
LICENSE_DATA_URL="https://${GITHUB_TOKEN}@${LICENSE_DATA_REPO_NO_SCHEME}"
TOOLSJAR=spdx-tools-2.1.8-jar-with-dependencies.jar
LICENSE_XML_DIR=./
TEST_DIR=./test/original
LICENSE_OUTPUT_DIR=.OUTPUTFILES
VERSION=$(git describe --always || echo 'UNKNOWN')
RELEASE_DATE=$(date -I)
# Clone the release
echo Cloning license list data repository, this could take a while...
git clone $LICENSE_DATA_URL $LICENSE_OUTPUT_DIR --quiet --depth 1
# Clean out the old data directories
rm -r $LICENSE_OUTPUT_DIR/html
rm -r $LICENSE_OUTPUT_DIR/json
rm -r $LICENSE_OUTPUT_DIR/rdfa
rm -r $LICENSE_OUTPUT_DIR/rdfnt
rm -r $LICENSE_OUTPUT_DIR/rdfturtle
rm -r $LICENSE_OUTPUT_DIR/rdfxml
rm -r $LICENSE_OUTPUT_DIR/template
rm -r $LICENSE_OUTPUT_DIR/text
rm -r $LICENSE_OUTPUT_DIR/website
rm $LICENSE_OUTPUT_DIR/licenses.md
# Create a file to skip expected warnings
IGNORE_WARNINGS="\"Duplicates licenses: AGPL-3.0-or-later, AGPL-3.0-only\",\"Duplicates licenses: GFDL-1.1-or-later, GFDL-1.1-only\",\"Duplicates licenses: GFDL-1.2-or-later, GFDL-1.2-only\",\"Duplicates licenses: GFDL-1.3-or-later, GFDL-1.3-only\",\"Duplicates licenses: GPL-1.0-or-later, GPL-1.0-only\",\"Duplicates licenses: GPL-2.0-or-later, GPL-2.0-only\",\"Duplicates licenses: GPL-3.0-or-later, GPL-3.0-only\",\"Duplicates licenses: LGPL-2.0-or-later, LGPL-2.0-only\",\"Duplicates licenses: LGPL-2.1-or-later, LGPL-2.1-only\",\"Duplicates licenses: LGPL-3.0-or-later, LGPL-3.0-only\",\"Duplicates licenses: MPL-2.0, MPL-2.0-no-copyleft-exception\""
WARNING_SFILE="TEMP-WARNINGS"
echo $IGNORE_WARNINGS > $WARNING_SFILE
# Test and generate the output files
PUBLISH_CMD="LicenseRDFAGenerator $LICENSE_XML_DIR $LICENSE_OUTPUT_DIR $VERSION $RELEASE_DATE $TEST_DIR $WARNING_SFILE"
echo running SPDX Tool command $PUBLISH_CMD
java -jar $TOOLSJAR $PUBLISH_CMD
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
rm $WARNING_SFILE
cd $LICENSE_OUTPUT_DIR
# Configure git
git config user.email "$GIT_EMAIL"
git config user.name "$GIT_USERNAME"
# Commit and push the changes back to the license data repository
# Create the push URL including the authentication token
git add -A
COMMIT_MSG="Automatic update of license list data from license XML repository version $VERSION"
git commit -m "$COMMIT_MSG"
# Check to see if we should add a tag
if [[ $VERSION =~ .+-g[a-f0-9]{7} ]]
then
# Just push without adding a tag
	echo Pushing updates to the license list data repository.  This could take a while...
	git push origin --quiet
else
# Add a tag and push with the tags
	git tag -a $VERSION -m "Adding release mathing the license list XML tag $VERSION"
	echo Pushing new version to the license list data repository.  This could take a while...
	git push origin --tags --quiet
fi
exit 0
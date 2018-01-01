#!/bin/bash
# NOTE: $GITHUB_TOKEN must be defined as an external system variable (e.g. in the Travis-CI respository settings https://docs.travis-ci.com/user/environment-variables#Defining-Variables-in-Repository-Settings
#TODO Update user ane email before PR to spdx/license-list-XML
GITUSERNAME="License Publisher (maintained by Gary O'Neall)"
GITEMAIL="gary@sourceauditor.com"
LICENSEDATAREPO="https://github.com/goneall/license-list-data.git"
HOSTNAMELOC=`expr index "$LICENSEDATAREPO" :// + 2`
LICENSEDATAURL=https://${GITHUB_TOKEN}@${LICENSEDATAREPO:$HOSTNAMELOC}
TOOLSJAR=spdx-tools-2.1.8-jar-with-dependencies.jar
LICENSEXMLDIR=./
TESTDIR=./test/original
LICENSEOUTPUTDIR=.OUTPUTFILES
VERSION=$(git describe)
if [[ $? != 0 ]]; then VERSION="UNKNOWN"; fi
RELEASEDATE=$(date -I)
echo $VERSION
# Configure git
git config --global user.email "$GITEMAIL"
git config --global user.name "$GITUSERNAME"
# Clone the release
echo Cloning license list data repository, this could take a while...
git clone $LICENSEDATAURL $LICENSEOUTPUTDIR --quiet
# Clean out the old data directories
rm -r $LICENSEOUTPUTDIR/html
rm -r $LICENSEOUTPUTDIR/json
rm -r $LICENSEOUTPUTDIR/rdfa
rm -r $LICENSEOUTPUTDIR/rdfnt
rm -r $LICENSEOUTPUTDIR/rdfturtle
rm -r $LICENSEOUTPUTDIR/rdfxml
rm -r $LICENSEOUTPUTDIR/template
rm -r $LICENSEOUTPUTDIR/text
rm -r $LICENSEOUTPUTDIR/website
rm $LICENSEOUTPUTDIR/licenses.md
# Create a file to skip expected warnings
IGNOREWARNINGS="\"Duplicates licenses: AGPL-3.0-or-later, AGPL-3.0-only\",\"Duplicates licenses: GFDL-1.1-or-later, GFDL-1.1-only\",\"Duplicates licenses: GFDL-1.2-or-later, GFDL-1.2-only\",\"Duplicates licenses: GFDL-1.3-or-later, GFDL-1.3-only\",\"Duplicates licenses: GPL-1.0-or-later, GPL-1.0-only\",\"Duplicates licenses: GPL-2.0-or-later, GPL-2.0-only\",\"Duplicates licenses: GPL-3.0-or-later, GPL-3.0-only\",\"Duplicates licenses: LGPL-2.0-or-later, LGPL-2.0-only\",\"Duplicates licenses: LGPL-2.1-or-later, LGPL-2.1-only\",\"Duplicates licenses: LGPL-3.0-or-later, LGPL-3.0-only\",\"Duplicates licenses: MPL-2.0, MPL-2.0-no-copyleft-exception\""
WARNINGSFILE="TEMP-WARNINGS"
echo $IGNOREWARNINGS > $WARNINGSFILE
# Test and generate the output files
PUBLISHCMD="LicenseRDFAGenerator $LICENSEXMLDIR $LICENSEOUTPUTDIR $VERSION $RELEASEDATE $TESTDIR $WARNINGSFILE"
echo running SPDX Tool command $PUBLISHCMD
java -jar $TOOLSJAR $PUBLISHCMD
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
rm $WARNINGSFILE
cd $LICENSEOUTPUTDIR
# Commit and push the changes back to the license data repository
# Create the push URL including the authentication token
git add .
COMMITMSG="Automatic update of license list data from license XML repository version $VERSION"
git commit -m "$COMMITMSG"
# Check to see if we should add a tag
if [[ $VERSION =~ .+-g[a-f0-9]{7} ]]
then
# Just push without adding a tag
	echo Pushing updates to the license list data repository.  This could take a while...
	git push origin --quiet
else
# Add a tag and push with the tags
	git  -a $VERSION -m "Adding release mathing the license list XML tag $VERSION"
	echo Pushing new version to the license list data repository.  This could take a while...
	git push origin --tags --quiet
fi
echo License list data has been published
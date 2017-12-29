#!/bin/bash
TOOLSJAR="spdx-tools-2.1.7-jar-with-dependencies.jar"
LICENSEXMLDIR=./src
OUTPUTDIR=./generatedlicfiles
TESTDIR=./test/original
VERSION=$(git describe)
if [[ $? != 0 ]]; then VERSION="UNKNOWN"; fi
RELEASEDATE=$(date -I)
VALIDATECMD="LicenseRDFAGenerator $LICENSEXMLDIR $OUTPUTDIR $VERSION $RELEASEDATE $TESTDIR"
#
if [ -d $OUTPUTDIR ]; then
	rm -r --interactive=never $OUTPUTDIR
fi
mkdir $OUTPUTDIR
echo running SPDX Tool command $VALIDATECMD
java -jar $TOOLSJAR $VALIDATECMD
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
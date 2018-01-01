#!/bin/bash
TOOLSJAR=`cygpath -w spdx-tools-2.1.7-jar-with-dependencies.jar`
echo $TOOLSJAR
LICENSEXMLDIR=`cygpath -w ./src`
OUTPUTDIR=`cygpath -w ./generatedlicfiles`
TESTDIR=`cygpath -w ./test/original`
echo $TESTDIR
VERSION=$(git describe)
if [[ $? != 0 ]]; then VERSION="UNKNOWN"; fi
RELEASEDATE=$(date -I)
echo $RELEASEDATE
VALIDATECMD="LicenseRDFAGenerator $LICENSEXMLDIR $OUTPUTDIR $VERSION $RELEASEDATE $TESTDIR"
echo $VALIDATECMD
#
if [ -d $OUTPUTDIR ]; then
	rm -r --interactive=never $OUTPUTDIR
fi
mkdir $OUTPUTDIR
echo running SPDX Tool command $VALIDATECMD
java -jar $TOOLSJAR $VALIDATECMD
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
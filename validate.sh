#!/bin/bash
TOOLSJAR="spdx-tools-2.1.7-jar-with-dependencies.jar"
LICENSEXMLDIR="./src"
OUTPUTDIR="./generatedlicfiles"
VALIDATECMD="LicenseRDFAGenerator $LICENSEXMLDIR $OUTPUTDIR"
#
if [ -d $OUTPUTDIR ]; then
	rm -r --interactive=never $OUTPUTDIR
fi
mkdir $OUTPUTDIR
java -jar $TOOLSJAR $VALIDATECMD
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
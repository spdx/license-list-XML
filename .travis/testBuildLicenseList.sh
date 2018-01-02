#!/bin/bash
TOOLSJAR=spdx-tools-2.1.8-jar-with-dependencies.jar
LICENSEXMLDIR=./
TESTDIR=./test/original
LICENSEOUTPUTDIR=.OUTPUTFILES
VERSION=$(git describe)
if [[ $? != 0 ]]; then VERSION="UNKNOWN"; fi
RELEASEDATE=$(date -I)
echo $VERSION
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
echo License list has been validated.
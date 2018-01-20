#!/bin/bash
TOOLSJAR=spdx-tools-2.1.9-jar-with-dependencies.jar
LICENSE_XML_DIR=./
TEST_DIR=./test/original
LICENSE_OUTPUT_DIR=.OUTPUTFILES
VERSION=$(git describe)
if [[ $? != 0 ]]; then VERSION="UNKNOWN"; fi
RELEASE_DATE=$(date -I)
mkdir $LICENSE_OUTPUT_DIR
# Create a file to skip expected warnings
IGNORE_WARNINGS="\"Duplicates licenses: AGPL-3.0-or-later, AGPL-3.0-only\",\"Duplicates licenses: GFDL-1.1-or-later, GFDL-1.1-only\",\"Duplicates licenses: GFDL-1.2-or-later, GFDL-1.2-only\",\"Duplicates licenses: GFDL-1.3-or-later, GFDL-1.3-only\",\"Duplicates licenses: GPL-1.0-or-later, GPL-1.0-only\",\"Duplicates licenses: GPL-2.0-or-later, GPL-2.0-only\",\"Duplicates licenses: GPL-3.0-or-later, GPL-3.0-only\",\"Duplicates licenses: LGPL-2.0-or-later, LGPL-2.0-only\",\"Duplicates licenses: LGPL-2.1-or-later, LGPL-2.1-only\",\"Duplicates licenses: LGPL-3.0-or-later, LGPL-3.0-only\",\"Duplicates licenses: MPL-2.0, MPL-2.0-no-copyleft-exception\""
WARNINGS_FILE="TEMP-WARNINGS"
echo $IGNORE_WARNINGS > $WARNINGS_FILE
# Test and generate the output files
PUBLISH_CMD="LicenseRDFAGenerator $LICENSE_XML_DIR $LICENSE_OUTPUT_DIR $VERSION $RELEASE_DATE $TEST_DIR $WARNINGS_FILE"
echo running SPDX Tool command $PUBLISH_CMD
java -jar -DLocalFsfFreeJson=true $TOOLSJAR $PUBLISH_CMD
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
rm $WARNINGS_FILE
echo License list has been validated.
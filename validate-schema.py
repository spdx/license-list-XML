# SPDX-License-Identifier: CC0-1.0

import os
import sys

import xmlschema

def getAllXMLFiles(srcDir):
    # recursively gets all files in srcDir with .xml extension.
    paths = []
    for root, ds, fs in os.walk("src"):
        for f in fs:
            if f.endswith(".xml"):
                paths.append(os.path.join(root, f))
    return paths

def getAllInvalid(paths, spdxSchema):
    # check all against schema and return list of any invalid
    invalid = []
    for xf in paths:
        try:
            if not spdxSchema.is_valid(xf):
                invalid.append(xf)
        except:
            # if fails here, then there's some error
            invalid.append(xf)
    return invalid

def printInvalidReasons(invalid, spdxSchema):
    # validate each invalid license, catch the exception and print the failure
    for i in invalid:
        try:
            spdxSchema.validate(i)
        except xmlschema.XMLSchemaValidationError as verr:
            print(f"  - {i}: {verr.reason}")
        except Exception as err:
            print(f"  - {i}: {err}")

if __name__ == "__main__":
    spdxSchema = xmlschema.XMLSchema("schema/ListedLicense.xsd")
    paths = getAllXMLFiles("src")

    print(f"Checking {len(paths)} licenses and exceptions for schema validation...")
    invalid = getAllInvalid(paths, spdxSchema)
    if invalid:
        print(f"Found {len(invalid)} licenses and exceptions that failed schema check:")
        for i in invalid:
            print(f"  - {i}")

        print("---------------------------")
        print("Displaying reasons for failures:")
        printInvalidReasons(invalid, spdxSchema)

        # fail the build
        sys.exit(-1)

    # if we get here, all passed
    print(f"All licenses and exceptions validated against schema.")

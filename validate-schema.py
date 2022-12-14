# SPDX-License-Identifier: CC0-1.0

import os

import xmlschema

def getAllXMLFiles(srcDir):
    # recursively gets all files in srcDir with .xml extension.
    paths = []
    for root, ds, fs in os.walk("src"):
        for f in fs:
            if f.endswith(".xml"):
                paths.append(os.path.join(root, f))
    return paths

if __name__ == "__main__":
    spdxSchema = xmlschema.XMLSchema("schema/ListedLicense.xsd")
    paths = getAllXMLFiles("src")

    print(f"Checking {len(paths)} licenses and exceptions for schema validation...")
    for xf in paths:
        spdxSchema.validate(xf)

    # if we get here, all passed
    print(f"All licenses and exceptions validated against schema.")

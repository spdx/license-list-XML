#!/usr/bin/env python3
#
# Pretty-print JSON, ordering attributes, stripping trailing
# whitespace, nesting tags, etc.  This does not adjust the indenting
# *within* text sections; you get to do that on your own.
#
# usage: ./bin/format-xml.py PATH...
#
# You can pass multiple PATHs to a single invocation, in which case
# the script will format each PATH.  When PATH is a directory, the
# script will recurse through its contents, formating every file which
# ends in '.xml'.
#
# This script depends on LXML (http://lxml.de/)
#
# Script licensed under SPDX-License-Identifier: MIT

import os
import re
import sys
from lxml import etree


_PARSER = etree.XMLParser(
    ns_clean=True,
    remove_blank_text=True,
    remove_comments=True,
    remove_pis=True,
)


def format_xml(path):
    if os.path.isdir(path):
        for dirpath, _, filenames in os.walk(path):
            for filename in filenames:
                if filename.endswith('.xml'):
                    format_xml(path=os.path.join(dirpath, filename))
        return
    with open(path, 'r') as f:
        original_content = f.read()
    content = original_content.replace('\t', ' ')
    tree = etree.fromstring(content, parser=_PARSER)
    content = etree.tostring(tree, encoding='unicode', pretty_print=True)
    content = re.sub(r'\s+$', '', content, flags=re.MULTILINE)
    if content != original_content:
        with open(path, 'wb') as f:
            f.write(content.encode('UTF-8'))
            f.write('\n'.encode('UTF-8'))


if __name__ == '__main__':
    for path in sys.argv[1:]:
        format_xml(path=path)

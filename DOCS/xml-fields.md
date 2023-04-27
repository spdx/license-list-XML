# XML template fields

This document describes the XML fields that are available for use in the [XML license templates](../src/) that define the licenses on the [SPDX License List](https://spdx.org/licenses).

The following details are just a summary and recommendations on use of the fields. The formal schema definition is available in [`schema/ListedLicense.xsd`](../schema/ListedLicense.xsd).

The "General structure" section below describes in plain language the way that license XML files are structured. Then, the "Template fields" section provides more specific details about the individual fields.

Except where explicitly stated otherwise, assume that "license" means "license or license exception" in the following details.

This document assumes that you have a basic familiarity with XML formatting, specifically the way that opening and closed tags work and are nested within one another, e.g.: `<license><text></text></license>`

## General structure

### Files and Filenames

The XML template for each license is stored in a separate file in the [`src/` directory](../src) with the name `IDENTIFIER.xml`, where `IDENTIFIER` is the unique ID that the license will have on the License List.

For license exceptions, the same pattern is used, with exceptions stored in the [`src/exceptions/` directory](../src/exceptions).

A corresponding "test text" file, with a plain text version of the license or exception, should be added to the [`test/simpleTestForGenerator/` directory](../test/simpleTestForGenerator). Unlike the XML files, the same directory is used for the test files for licenses as well as exceptions. This text file will be used by the CI system to confirm that the XML template actually matches the "test text" for each license and exception.

### Whitespace and formatting

We aren't picky about tabs vs. spaces, number of spaces for indenting, etc.

At some point maybe we'll pick a standard and update the existing files, but we haven't yet, so use whatever you like.

### Beginning and end matter

Within the .xml file, the first and last lines of the file should be the following:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<SPDXLicenseCollection xmlns="http://www.spdx.org/license">

. . .

</SPDXLicenseCollection>
```

### `<license>` or `<exception>` tag

The main tag used to define the license or exception is, unsurprisingly, **`<license>`** or **`<exception>`**. All of the remaining content will be enclosed within a `<license></license>` or `<exception></exception>` pair of tags.

There are two mandatory attributes for every `<license>` and `<exception>` tag:
* `licenseId`: the unique SPDX Identifier for the license; should be identical to the filename
* `name`: the longer "real name" of the license

There are two additional attributes which are optional, but highly encouraged:
* `isOsiApproved` (for licenses, not exceptions): either "true" or "false" based on whether this license has been approved by the [Open Source Initiative](https://opensource.org/licenses/alphabetical)
* `listVersionAdded`: in which release version of the SPDX License List was the license first added, e.g. "3.19".
  * Typically you'll check the currently-released version at https://spdx.org/licenses/ and increment the minor version by 1 for a new license.

Finally, if the license ID has been deprecated, one additional attribute should be included:
* `deprecatedVersion`: in which release version of the SPDX License List was the license first marked as deprecated, e.g. "3.19"

Note that the deprecated tags refer to whether the ID has been deprecated _by SPDX_ -- in other words, if the SPDX Legal Team no longer recommends that the identifier should be used. Licenses that have been described as "deprecated" or "superseded" by the _license author_ might no longer be recommended to use for new code, but their identifiers remain valid License IDs on the SPDX License List.

Deprecated license identifiers will be listed at the bottom of the SPDX License List page at https://spdx.org/licenses/.

### License metadata

There are three optional first-level metadata fields that can be nested immediately under `<license>` or `<exception>`, each of which is optional:

* **`<crossRefs>`**: Defines cross-references to URLs where the license can be found in use by one or a few projects, and (if applicable) where posted by the license steward
* **`<notes>`**: Describes general comments about the license; if deprecated, also briefly explain the reason for deprecating the license identifier
* **`<obsoletedBys>`** (if license is deprecated): Lists the license(s) that should be used instead of this deprecated license

### License text

Then, the actual license text would be contained within the `<text></text>` section:

* **`<text>`**: Defines the actual text and templating for the license

Example:

```xml
<license licenseId="MyLicense" name="My License">
    <crossRefs>
        <crossRef>https://example.com/mylicense.md</crossRef>
	<crossRef>https://example.com/MyCode.c</crossRef>
    </crossRefs>
    <notes>This license is a modified version of MyOtherLicense, with an extra paragraph at the end.</notes>
    <text>
        [Actual text goes here...]
    </text>
</license>
```

## Template fields

### Section annotation markers

Some portions of the license text can be surrounded by annotation tags, to denote certain sections of the license text:

* **`<titleText>`**: indicates the title of the license, if specified in the license text itself
* **`<copyrightText>`**: indicates where a copyright notice would be placed for the licensed code
  * Note that `<copyrightText>` should _not_ be used for copyright notices that apply to the copyright in the license text itself!
* **`<standardLicenseHeader>`**: indicates a standard way that the license recommends specifying the license, e.g. in code comments
  * Note that `<standardLicenseHeader>` should _only_ be used if it is defined by the license text itself!
  * Typically, this would be located in an appendix titled something like "How to apply the license to your work"

### Paragraphs and newlines

Separate paragraphs should be surrounded by **`<p>...</p>`** tags.

Newlines can be added at the end of a line with **`<br />`**. Note that this does not need a closing tag, because the `/` within the angle brackets makes it self-closing.

Generally, you should use **`<p>`** tags for each paragraph and should not use **`<br />`** unless you have a good reason.

### Lists

Numbered lists (e.g., a series of numbered sections) and unnumbered lists (e.g., a list with bullet points) are both represented the same way in the XML template language.

Here are the basic rules:

* The list as a whole should be surrounded with **`<list>...</list>`** tags.
* Within the `<list>`, each item in the list should be surrounded with **`<item>...</item>`** tags.
* If a list item has a section number or a bullet point at the start, the section number or bullet should be surrounded with **`<bullet>...</bullet>`** tags.
* Sub-lists can be nested within an item, to indicate e.g. subsections within an overarching numbered section.
* Items can also contain **`<p>...</p>`** tags, as needed if an item contains multiple paragraphs.

Example:

```
1. text 1
2. text 2
  * text abc
  - text def
```

could be represented as:

```xml
<list>
    <item>
        <bullet>1.</bullet> text 1
    </item>
    <item>
        <bullet>2.</bullet> text 2
        <list>
            <item>
                <bullet>*</bullet> text abc
            </item>
            <item>
                <bullet>-</bullet> text def
            </item>
        </list>
    </item>
</list>
```

### Optional text

If a license template should match regardless of whether or not a particular section of text is present, then that text can be surrounded with **`<optional>...</optional>`** tags.

By default, when rendered on the [SPDX License List website](https://spdx.org/licenses), a space will be included before and after the optional text. If the tag includes a `spacing="none"` attribute, e.g. `<optional spacing="none">`, then these spaces will be omitted. This is useful if, for instance, the optional text is a suffix to a word or a quotation mark where the optional portion should not be separated by a space.

Note that some annotated portions of text (specifically `<titleText>` and `<copyrightText>`) are deemed to be "optional" automatically, so the `<optional>` tag is not needed where those are present.

### Replaceable text

Some licenses contain portions of language that can match to a variety of alternative texts. This is called "replaceable text", and is denoted with the **`<alt>...</alt>`** tag.

The **<alt>** tag includes two attributes:
* `name`: specifies a unique name for this matching element
* `match`: specifies a [POSIX extended regular expression (ERE)](http://pubs.opengroup.org/onlinepubs/9699919799/) for what text will match

Note that an example of actually-matching text should be included between the `<alt>` and `</alt>` tags, as the specified example is what will be rendered on the SPDX License List website page and in license text files provided by SPDX. To the extent a license has a "canonical" or "most commonly used" standard language, use that in the match between the `alt` tags.

Learning regular expressions is outside the scope of this document. However, here are a few of the most common patterns, taken from [BSD-3-Clause](../src/BSD-3-Clause.xml) which is a good example of using several `<alt>` tags effectively:
* `<alt match="are|is" name="tobe">are</alt>`: Matches if the text is either the word "are" or the word "is"
* `<alt match="EXPRESS(ED)?" name="express">EXPRESS</alt>`: Matches if the text is either the word "EXPRESS" or the word "EXPRESSED"
* `<alt match=".+" name="copyrightHolderAsIs">THE COPYRIGHT HOLDERS AND CONTRIBUTORS</alt>`: Matches anything as long as it consists of at least one or more characters

### Other things to watch out for

"Smart quotes" (the curly quotation mark characters) are a pain. Only "non-smart" quotes should be included in templates. In particular, if you are copying from a Word document, there's a good chance it will paste smart quotes, so check carefully.

Some characters (such as `<` and `>`, or double-quotes within an already-quoted attribute string) cannot be included as-is in license templates, because they will be interpreted as having a different meaning in XML. These would need to be replaced with special character codes. Again, [BSD-3-Clause](../src/BSD-3-Clause.xml) is a good example of a couple of these.
* `<` and `>` will need to be replaced in the XML file with: `&lt;` and `&gt;`

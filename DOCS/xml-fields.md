# XML template fields

This document describes the XML fields that are used in the [XML license templates](../src/), which define the licenses on the [SPDX License List](https://spdx.org/licenses) and implement some aspects of the [matching guidelines](https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/).

The goal of this document is to provide a more "human-readable" guide for creating and formatting an XML file. The formal schema definition is available in [`schema/ListedLicense.xsd`](../schema/ListedLicense.xsd).

The "General structure" section below describes in plain language the way that license XML files are structured. Then, the "Template fields" section provides more specific details about the individual XML tags.

Except where explicitly stated otherwise, assume that "license" means "license or license exception" in the following details.

This document assumes that you have a basic familiarity with XML formatting, specifically the way that opening and closed tags work and are nested within one another, e.g.: `<license><text></text></license>`

## General structure

### Files and Filenames

The XML template for each license is stored in a separate file in the [`src/` directory](../src) with the name `IDENTIFIER.xml`, where `IDENTIFIER` is the unique ID that the license will have on the License List.

For license exceptions, the same pattern is used, with exceptions stored in the [`src/exceptions/` directory](../src/exceptions).

A corresponding "test text" file, a plain text version of the license or exception, is stored in the [`test/simpleTestForGenerator/` directory](../test/simpleTestForGenerator). Unlike the XML files, the same directory is used for the test files for licenses as well as exceptions. This text file will be used by the CI system to confirm that the XML template actually matches the "test text" for each license and exception.

### Whitespace and formatting

We aren't picky about tabs vs. spaces, number of spaces for indenting, etc. (And note, whitespace is not relevant for matching license text.) That being said, if you use the [SPDX Online Tools-license submission](https://tools.spdx.org/app/submit_new_license/) to create the XML and TXT files, there is a "beautify" option that formats the file nicely. 

### Beginning and end tag: `<SPDXLicenseCollection>`

Within the .xml file, the first and last lines of the file must be the following:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<SPDXLicenseCollection xmlns="http://www.spdx.org/license">

. . .

</SPDXLicenseCollection>
```

### `<license>` or `<exception>` tag

After the `<SPDXLicenseCollection>` tag, all of the remaining content will be enclosed within a **`<license></license>`** or **`<exception></exception>`** pair of tags.

There are two mandatory attributes for every `<license>` and `<exception>` tag:
* `licenseId`: the unique SPDX Identifier for the license; should be identical to the filename. See [license-fields:short-identifier](license-fields.md#b-short-identifier) for a full description of this field.
* `name`: the longer or full title of the license (if there is one); see [license-fields:full-name](license-fields.md#a-full-name) for a full description of this field.

There are two additional highly encouraged attributes which are technically optional:
* `listVersionAdded`: in which release version of the SPDX License List was the license first added, e.g., "3.24.0".
  * Typically you'll check the currently-released version at https://github.com/spdx/license-list-XML/releases and increment the minor version by 1 for a new license. E.g., when last release is "3.24.0" you add there "3.25.0".
* `isOsiApproved` (for licenses, not exceptions): either "true" or "false" based on whether this license has been approved by the [Open Source Initiative](https://opensource.org/licenses/alphabetical)

Finally, if the license ID has been deprecated, one additional attribute should be included:
* `deprecatedVersion`: in which release version of the SPDX License List was the license first marked as deprecated, e.g. "3.24.0"

NOTE: The deprecated tags refer to whether the ID has been deprecated _by SPDX_ -- in other words, if the SPDX Legal Team no longer recommends that the identifier be used. Licenses that have been described as "deprecated" or "superseded" by the _license author_ might no longer be recommended to use for new code, but their identifiers remain valid License IDs on the SPDX License List.

Deprecated license identifiers will be listed at the bottom of the SPDX License List page at https://spdx.org/licenses/.

### License metadata

There are three first-level metadata fields that can be placed immediately under `<license>` or `<exception>`, each of which is optional:

* **`<crossRefs>`**: Defines cross-references to URLs where the license can be found in use by one or a few projects, and (if applicable) where posted by the license steward. See [license-fields:web-pages](license-fields.md#c-other-web-pages-for-licenseexception) for more information about this field.
* **`<notes>`**: Describes general comments about the license; if deprecated, also briefly explain the reason for deprecating the license identifier. See [license-fields:Notes](license-fields.md#d-notes) for more information about this field. If there are not Notes, then remove this tag from the XML file.
* **`<obsoletedBys>`** (if license is deprecated): Lists the license(s) that should be used instead of this deprecated license

### License `<text>` tag 

Next, the actual license text would be contained within the `<text></text>` section:

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

Inside the `<text>` tag, some portions of specific text can be surrounded by annotation tags. These are all optional:

* **`<titleText>`**: indicates the title of the license, if specified in the license text itself. If the license does not have a title, then this tag is not needed.
* **`<copyrightText>`**: indicates where a copyright notice would be placed for the licensed code. Because the copyright notice is not part of the license and thus ignored as related to matching a license, it does not matter if the the copyright notice includes a specific name or is generic.
  * Note that `<copyrightText>` should _not_ be used for copyright notices that apply to the copyright in the license text itself!
* **`<standardLicenseHeader>`**: indicates a standard way that the license recommends specifying the license, see [license-fields:standard-license-header](license-fields.md#h-standard-license-header) for a full descriptioin of this field.
  * If there is no `<standardLicenseHeader>`, remove this tag (the online submission tool may add it automatically)

### Paragraphs and newlines

Separate paragraphs should be surrounded by **`<p>...</p>`** tags.

Newlines without a paragraph break can be added at the end of a line with **`<br />`**. Note that this does not need a closing tag, because the `/` within the angle brackets makes it self-closing.

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

By default, when rendered on the [SPDX License List website](https://spdx.org/licenses), a space will be included before and after the optional text. If the tag includes a `spacing="none"` attribute, e.g. **`<optional spacing="none">`**, then these spaces will be omitted. This is useful if, for instance, the optional text is a suffix to a word or a quotation mark where the optional portion should not be separated by a space.

NOTE: The `<optional>` tag **cannot** be used within: `<titleText>`, `<bullet>`, `<copyrightText>`, or `<alt>`. This is because the text within these tags are deemed to be "replaceable text" automatically, so the `<optional>` tag is not allowed where those are present.

### Replaceable text: `<alt>`

Some licenses contain portions of language that can match to a variety of alternative texts. This is called "replaceable text", and is denoted with the **`<alt>...</alt>`** tag.

An example of actually-matching text should be included between the `<alt>` and `</alt>` tags; this text will be rendered on the SPDX License List website page and in files provided in [SPDX license-list-data](https://github.com/spdx/license-list-data). To the extent a license has a "canonical" or "most commonly used" standard language, use that in the match between the `alt` tags.

The **<alt>** tag includes two attributes:
* `name`: specifies a unique name for this matching element. If there is more than one of the same element, it is good practice and recommended to add numbers for such similar alt tags. 
* `match`: specifies a [POSIX extended regular expression (ERE)](http://pubs.opengroup.org/onlinepubs/9699919799/) for what text will match

Learning regular expressions is outside the scope of this document. However, here are a few of the most common patterns for the `match` attribute:
* `<alt match="are|is">`: Matches if the text is either the word "are" or the word "is"
* `<alt match="Lesser|Library|()">`: Matches if the text is either the word "Lesser" or "Library" or neither (no word at all)
* `<alt match="EXPRESS(ED)?">`: Matches if the text is either the word "EXPRESS" or the word "EXPRESSED"
  * the `?` means that the text in the parenthesis can be present or not. This is functionally similar to the `<optional>` tag.
* `<alt match=".+" name="copyrightHolderAsIs">THE COPYRIGHT HOLDERS AND CONTRIBUTORS</alt>`: Matches anything as long as it consists of at least one or more characters
* `<alt match="(Neither the name of .+ nor the names of (specific )? contributors,? may)|...">`: this option combines a few of the attributes above.
  * the `.+` means any name can be present 
  * the `?` after `(specific )` means the word "specific" can be present or not, note there is a space between the end of the word and the closing paren
  * the `?` after the comma after "contributors" means the comma can be present or not

The [BSD-3-Clause](../src/BSD-3-Clause.xml) is a good example of using several `<alt>` tags effectively

NOTE: Some annotated portions of text (specifically `<titleText>`, `<bullet>` and `<copyrightText>`) are deemed to be "replaceable text" automatically, so the `<alt>` tag is not allowed where those are present.

NOTE: If a license has a fair amount of markup in an <alt> tag, you may need to add `\s+` between words to allow matching in spite of line breaks or multiple spaces. See [BSD-3-Clause](../src/BSD-3-Clause.xml) and [MIT](../src/MIT.xml) for examples. 

### Other things to watch out for

"Smart quotes" (the curly quotation mark characters) are a pain. Only "non-smart" quotes should be included in templates. In particular, if you are copying from a Word document, there's a good chance it will paste smart quotes, so check carefully.

Some characters (such as `<` and `>`, or double-quotes within an already-quoted attribute string) cannot be included as-is in license templates, because they will be interpreted as having a different meaning in XML. These would need to be replaced with special character codes. Again, [BSD-3-Clause](../src/BSD-3-Clause.xml) is a good example of a couple of these.
* `<` and `>` will need to be replaced in the XML file with: `&lt;` and `&gt;`

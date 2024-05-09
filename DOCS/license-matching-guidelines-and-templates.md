# Annex B License matching guidelines and templates (Informative)

## B.1 SPDX license list matching guidelines <a name="B.1"></a>

The SPDX License List Matching Guidelines provide guidelines to be used for the purposes of matching licenses and license exceptions against those included on the SPDX License List. There is no intent here to make a judgment or interpretation, but merely to ensure that when one SPDX user identifies a license as "BSD-3-Clause," for example, it is indeed the same license as what someone else identifies as "BSD-3-Clause" and the same license as what is listed on the SPDX License List.  As noted here, some of the matching guidelines are implemented in the XML files of the SPDX License List repository.

## B.2 How these guidelines are applied <a name="B.2"></a>

### B.2.1 Purpose <a name="B.2.1"></a>

To ensure consistent results by different SPDX document creators when matching license information that will be included in the License Information in File field. SPDX document creators or tools may match on the license or exception text itself, the official license header, or the SPDX License List short identifier.

### B.2.2 Guideline: official license headers <a name="B.2.2"></a>

The matching guidelines apply to license and exception text, as well as official license headers. Official license headers are defined by the SPDX License List as specific text specified within the license itself to be put in the header of files. (see [explanation of SPDX License List fields](https://github.com/spdx/license-list-XML/blob/master/DOCS/license-fields.md) for more info).

The following XML tag is used to implement this guideline: `<standardLicenseHeader>`

## B.3 Substantive text <a name="B.3"></a>

### B.3.1 Purpose <a name="B.3.1"></a>

To ensure that when matching licenses and exceptions to the SPDX License List, there is an appropriate balance between matching against the substantive text and disregarding parts of the text that do not alter the substantive text or legal meaning. Further guidelines of what can be disregarded or considered replaceable for purposes of matching are listed below here and in the subsequent specific guidelines. A conservative approach is taken in regard to rules relating to disregarded or replaceable text.

### B.3.2 Guideline: verbatim text <a name="B.3.2"></a>

License and exception text should be the same verbatim text (except for the guidelines stated here). The text should be in the same order, e.g., differently ordered paragraphs would not be considered a match.

### B.3.3 Guideline: no additional text <a name="B.3.3"></a>

Matched text should only include that found in the vetted license or exception text. Where a license or exception found includes additional text or clauses, this should not be considered a match.

### B.3.4 Guideline: replaceable text <a name="B.3.4"></a>

Some licenses include text that refers to the specific copyright holder or author, yet the rest of the license is exactly the same. The intent here is to avoid the inclusion of a specific name in one part of the license resulting in a non-match where the license is otherwise an exact match to the legally substantive terms (e.g., the third clause and disclaimer in the BSD licenses, or the third, fourth, and fifth clauses of Apache-1.1). In these cases, there should be a positive license match.

The text indicated as such can be replaced with similar values (e.g., a different name or generic term; different date) and still be considered a positive match. This rule also applies to text-matching in official license headers (see Guideline: official license headers).
  
The following XML tag is used to implement this guideline.  `<alt>` with 2 attributes:

* `match` - a POSIX extended regular expression (ERE) to match the replaceable text
* `name` - an identifier for the variable text unique to the license XML document

The original text is enclosed within the beginning and ending alt tags.

For example: `<alt match="(?i:copyright.{0,200})." name="copyright1">Copyright Linux Foundation</alt>`
  
The original replaceable text appears on the SPDX License List webpage in red text.

### B.3.5 Guideline: omittable text <a name="B.3.5"></a>

Some licenses have text that can simply be ignored. The intent here is to avoid the inclusion of certain text that is superfluous or irrelevant in regards to the substantive license text resulting in a non-match where the license is otherwise an exact match (e.g., directions on how to apply the license or other similar exhibits). In these cases, there should be a positive license match.

The license should be considered a match if the text indicated is present and matches OR the text indicated is missing altogether.

The following XML tag is used to implement this guideline: `<optional>`
  
For example: `<optional>Apache License Version 2.0, January 2004 http://www.apache.org/licenses/</optional>`

Omittable text appears on the SPDX License List webpage in blue text.

## B.4 Whitespace <a name="B.4"></a>

### B.4.1 Purpose <a name="B.4.1"></a>

To avoid the possibility of a non-match due to different spacing of words, line breaks, or paragraphs.

### B.4.2 Guideline <a name="B.4.2"></a>

All whitespace should be treated as a single blank space. 

XML files do not require specific markup to implement this guideline. 

## B.5 Capitalization <a name="B.5"></a>

### B.5.1  Purpose <a name="B.5.1"></a>

To avoid the possibility of a non-match due to lowercase or uppercase letters in otherwise the same words.

### B.5.2  Guideline <a name="B.5.2"></a>

All uppercase and lowercase letters should be treated as lowercase letters. 

XML files do not require specific markup to implement this guideline. 

## B.6 Punctuation <a name="B.6"></a>

### B.6.1  Purpose <a name="B.6.1"></a>

Because punctuation can change the meaning of a sentence, punctuation needs to be included in the matching process. 

XML files do not require specific markup to implement this guideline. 

### B.6.2  Guideline: punctuation <a name="B.6.2"></a>

Punctuation should be matched, unless otherwise stated in these guidelines.

### B.6.3  Guideline: hyphens, dashes <a name="B.6.3"></a>

Any hyphen, dash, en dash, em dash, or other variation should be considered equivalent.

### B.6.4 Guideline: Quotes

Any variation of quotations (single, double, curly, etc.) should be considered equivalent.

## B.7 Code Comment Indicators <a name="B.7"></a>

### B.7.1  Purpose <a name="B.7.1"></a>

To avoid the possibility of a non-match due to the existence or absence of code comment indicators placed within the license text, e.g. at the start of each line of text.

### B.7.2  Guideline <a name="B.7.2"></a>

Any kind of code comment indicator or prefix which occurs at the beginning of each line in a matchable section should be ignored for matching purposes. 

XML files do not require specific markup to implement this guideline. 

## B.8 Bullets and numbering <a name="B.8"></a>

### B.8.1  Purpose <a name="B.8.1"></a>

To avoid the possibility of a non-match due to the otherwise same license using bullets instead of numbers, number instead of letter, or no bullets instead of bullet, etc., for a list of clauses.

### B.8.2  Guideline <a name="B.8.2"></a>

Where a line starts with a bullet, number, letter, or some form of a list item (determined where list item is followed by a space, then the text of the sentence), ignore the list item for matching purposes. 

The following XML tag is used to implement this guideline: `<bullet>`

For example: `<bullet>1.0</bullet>`

## B.9 Varietal word spelling <a name="B.9"></a>

### B.9.1  Purpose <a name="B.9.1"></a>

English uses different spelling for some words. By identifying the spelling variations for words found or likely to be found in licenses, we avoid the possibility of a non-match due to the same word being spelled differently. This list is not meant to be an exhaustive list of all spelling variations, but meant to capture the words most likely to be found in open source software licenses.

### B.9.2  Guideline <a name="B.9.2"></a>

The words in each line of the text file available at <https://spdx.org/licenses/equivalentwords.txt> are considered equivalent and interchangeable. 

XML files do not require specific markup to implement this guideline.

## B.10 Copyright symbol <a name="B.10"></a>

### B.10.1 Purpose <a name="B.10.1"></a>

By having a rule regarding the use of "©", "(c)", or "copyright", we avoid the possibility of a mismatch based on these variations.

### B.10.2 Guideline <a name="B.10.2"></a>

"©", "(c)", or "Copyright" should be considered equivalent and interchangeable. 

XML files do not require specific markup to implement this guideline. The copyright symbol is part of the copyright notice, see implementation of that guideline below.

## B.11 Copyright notice <a name="B.11"></a>

### B.11.1 Purpose <a name="B.11.1"></a>

To avoid a license mismatch merely because the copyright notice (usually found above the actual license or exception text) is different. The copyright notice is important information to be recorded elsewhere in the SPDX document, but for the purposes of matching a license to the SPDX License List, it should be ignored because it is not part of the substantive license text.

### B.11.2 Guideline <a name="B.11.2"></a>

Ignore copyright notices. A copyright notice consists of the following elements, for example: "2012 Copyright, John Doe. All rights reserved." or "(c) 2012 John Doe." 

The following XML tag is used to implement this guideline: `<copyrightText>`

For example: `<copyrightText>Copyright 2022 Linux Foundation</copyrightText>`

## B.12 License name or title <a name="B.12"></a>

### B.12.1 Purpose <a name="B.12.1"></a>

To avoid a license mismatch merely because the name or title of the license is different than how the license is usually referred to or different than the SPDX full name. This also avoids a mismatch if the title or name of the license is simply not included.

### B.12.2 Guideline <a name="B.12.2"></a>

Ignore the license name or title for matching purposes, so long as what ignored is the title only and there is no additional substantive text added here. 

The following XML tag is used to implement this guideline: `<titleText>` 

For example: `<titleText>Attribution Assurance License</titleText>`

## B.13 Extraneous text at the end of a license <a name="B.13"></a>

### B.13.1 Purpose <a name="B.13.1"></a>

To avoid a license mismatch merely because extraneous text that appears at the end of the terms of a license is different or missing. This also avoids a mismatch if the extraneous text merely serves as a license notice example and includes a specific copyright holder's name.

### B.13.2 Guideline <a name="B.13.2"></a>

Ignore any text that occurs after the obvious end of the license and does not include substantive text of the license, for example: text that occurs after a statement such as, "END OF TERMS AND CONDITIONS," or an exhibit or appendix that includes an example or instructions on to how to apply the license to your code. Do not apply this guideline or ignore text that is comprised of additional license terms (e.g., permitted additional terms under GPL-3.0, section 7). 

To implement this guideline, use the `<optional>` XML element tag as described in section B.3.5.

## B.14 HTTP Protocol <a name="B.14"></a>

### B.14.1 Purpose <a name="B.14.1"></a>

To avoid a license mismatch due to a difference in a hyperlink protocol (e.g. http vs. https).

### B.14.2 Guideline <a name="B.14.2"></a>

HTTP:// and HTTPS:// should be considered equivalent. 

XML files do not require specific markup to implement this guideline.

## B.15 SPDX License list <a name="B.15"></a>

### B.15.1 Template access <a name="B.15.1"></a>

The license XML can be accessed in the license-list-data repository under the license-list-XML directory.  Although the license list XML files can also be found in the [license-list-XML](https://github.com/spdx/license-list-XML) repo, users are encouraged to use the published versions in the [license-list-data](https://github.com/spdx/license-list-data) repository.  The license-list-data repository is tagged by release.  Only tagged released versions of the license list are considered stable.

### B.15.2 License List XML format
  
A full schema for the License List XML can be found at https://github.com/spdx/license-list-XML/blob/master/schema/ListedLicense.xsd.
  
###  B.15.3 Legacy Text Template format <a name="B.15.2"></a>

Prior to the XML format, a text template was used to express variable and optional text in licenses.  This text template is still supported, however, users are encouraged to use the more expressive XML format.
  
A legacy template is composed of text with zero or more rules embedded in it.

A rule is a variable section of a license wrapped between double angle brackets “\<\<\>\>” and is composed of 4 fields. Each field is separated with a semi-colon “;”. Rules cannot be embedded within other rules. Rule fields begin with a case sensitive tag followed by an equal sign “=”.

Rule fields:

* type: indicates whether the text is replaceable or omittable as per Matching Guideline #2 (“Substantive Text”).
    * Indicated by `<<var; . . . >>` or...
    * Indicated by `<<beginOptional; . . .>>` and `<<endOptional>>` respectively.
    * This field is the first field and is required.
* name: name of the field in the template.
    * This field is unique within each license template.
    * This field is required.
* original: the original text of the rule.
    * This field is required for a rule type: `<<var; . . . >>`
* match: a POSIX extended regular expression (ERE).
    * This field is required for a rule type: `<<var; . . . >>`

The [POSIX ERE]( http://pubs.opengroup.org/onlinepubs/9699919799/) in the match field has the following restrictions and extensions:

* Semicolons are escaped with `\;`
* POSIX Bracket Extensions are not allowed

EXAMPLE: `<<var;name=organizationClause3;original=the copyright holder;match=.+>>`

# Explanation of SPDX License List Fields
The following information describes how each field on the license and exception list is treated. Criteria listed below applies to both licenses and exceptions, unless otherwise noted or obviously not applicable

**A) Full Name**
* The full name should use the title found in the license file or be consistent with naming from other well-known sources (i.e., OSI, Fedora, etc.), where applicable. If possible and applicable, input from the license author or steward should be sought.
* The full name may omit certain word, such as "the," for alphabetical sorting purposes
* No commas in full name 
* The word "version" is not spelled out; "v" or nothing is used to indicate license version (for space reasons)
* For version, use lower case v and no period or space between v and the number
* No abbreviations are included (in parenthesis) after the full name

**B) Short Identifier**
* Short identifier to be used to identify a match to licenses or exceptions in the context of an SPDX file, a source file, or elsewhere
* Short identifiers consist of ASCII letters (A-Za-z), digits (0-9), full stops (.) and hyphen or minus signs (-)
* Short identifiers consist of an abbreviation based on a common short name or acronym 
* Where applicable, the abbreviation will be followed by a dash and then the version number, in X.Y format
* Where applicable, and if possible, the short identifier should be harmonized with other well-known open source naming sources (i.e., OSI, Fedora, as mentioned in license, etc.)
* Short identifiers should be as short in length as possible while staying consistent with all other criteria
* Short identifiers for exceptions should include the word "exception" unless there is a compelling reason not to; and should only include a version number if the exception itself is versioned

**C) Other web pages for license/exception**
* Include URL for the official text of the license or exception
* If the license is OSI approved, also include URL for OSI license page
* Include another URL that has text version of license, if neither of the first two options are available
* Note that the source URL may refer to an original URL for the license which is no longer active. We don't remove inactive URLs. New or best available URLs may be added.
* Include a URL to the license or exception in its native language (e.g. French for CeCILL). Include URLs to English or other translations where multiple, equivalent official translations exist (e.g. EUPL)

**D) Notes**
* Include date of release, if found, for licenses with multiple versions, using European date format: day - month - year
* Only factual information is included here
* Does not contain information (or links to information) that includes any kind of interpretation or comment about the license (even if written by the license author)
* Links to other official language translations of the license
* For exceptions, includes a reference to the license(s) to which this exception typically applies

**E) OSI Approved?**
* If the license is [OSI-approved](https://opensource.org/licenses), this field will indicate "Y" and otherwise left blank

**F) FSF Free/Libre?**
* If the license is [listed as free by the FSF](https://www.gnu.org/licenses/license-list.en.html), this field will indicate "Y". If the license is listed as not free by the FSF, the field will indicate "N". Otherwise, the field will be left blank.

**G) Text**
* Full license text of the license or exception

**H) Standard License Header**
* Should only include text intended to be put in the header of source files or other files as specified in the license or license appendix when specifically delineated
* Indicate if there is any variation in the header (i.e. for files developed by a contributor versus when applying license to original work)
* Do not include NOTICE info intended for a separate notice file
* Leave this field blank if there is no standard header as specifically defined in the license

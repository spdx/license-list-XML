# How do I know if a license matches to a license already on the SPDX License List?

As the SPDX License List grows, we need to rely on tooling more and more to check if a license found is or is not already on the SPDX License List to then determine if it should be submitted. This document provides information on various helpful tools and other guidance to help with this task. 

## SPDX Check License
SPDX Check License (source code)- is a Django application in which you paste the text of a license or exception into a text box and it will match it against all the licenses and exceptions in the SPDX License List, implementing the SPDX Matching Guidelines. Because of its thoroughness, this tool may take more time to give an answer than SPDX-license-diff. It will tell you if there is a match or not and if it finds a close match, but won’t indicate a diff.

## SPDX-license-diff
SPDX-license-diff is a Firefox and Chromium/Chrome plugin that compares highlighted text of a license as displayed on a web page to find the closest match to something on the SPDX License List. If a match to an SPDX identifier is given as close to but less than 100%, SPDX-license-diff will show you differences in the texts.

### Good for: 
Quick identification as compared to SPDX License List for a specific license text.

### Tips for using: 
In some cases, differences will display that are actually accounted for by the SPDX matching guidelines. If it’s a close match, (e.g., only the name of the copyright holder or author, or other non-substantive seeming differences) it is recommended to cross-check against the actual template that the SPDX license list uses to implement (some of) the matching guidelines.




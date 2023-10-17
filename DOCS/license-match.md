# How do I know if a license matches to a license already on the SPDX License List?

As the SPDX License List grows, we need to rely on tooling more and more to check if a license found matches to a license already on the SPDX License List. This document provides information on various helpful tools and other guidance to help with this task.

## SPDX Check License
[SPDX Check License](https://tools.spdx.org/app/check_license/) is part of the SPDX Online Tool suite and allows you to paste the text of a license or exception into a text box and it will match it against all the licenses and exceptions in the SPDX License List, implementing the SPDX Matching Guidelines. Because of its thoroughness, this tool may take a bit of time to give an answer. It will tell you if there is a match or not and if it finds a close match, but won’t indicate a diff. This is an open source Django application and the source code is located https://github.com/spdx/spdx-online-tools

## SPDX-license-diff
SPDX-license-diff is a add-on or extension for [Firefox](https://addons.mozilla.org/en-US/firefox/addon/spdx-license-diff/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search) and Chromium/[Chrome](https://chrome.google.com/webstore/detail/spdx-license-diff/kfoadicmilbgnicoldjmccpaicejacdh?hl=en). Once installed, you can highlight the text of a license on a web pages and it will find the closest matches, on the SPDX License List. The results will indicate a percentage match and a drop-down of licenses with decreasing matches, displays the differences in the texts.  

SPDX-license-diff is an open source tool and the code is located at https://github.com/spdx/spdx-license-diff

### Tips for using: 
In some cases, differences will display that are actually accounted for by the SPDX matching guidelines. If it’s a close match, (e.g., only the name of the copyright holder or author, or other non-substantive seeming differences) it is recommended to cross-check against the actual XML template for the given license.

## Google site search
Sometimes you might use one or both of the above tools and still think there is something familiar about the license. You can also try using a Google site search and search on a specific phrase of text.  To do this, type the following into the search bar `site:https://spdx.org/licenses/  "specific text phrase between quotes"

# Guidance related to specific licenses

## Historical Permission and Notice Disclaimer (HPND)

text here
## BSD-3-Clause

text here


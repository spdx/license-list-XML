# How do I know if a license matches to a license already on the SPDX License List?

As the SPDX License List grows, we need to rely on tooling more and more to check if a license found matches to a license already on the SPDX License List. This document provides information on various helpful tools and other guidance to help with this task.

## SPDX Check License
[SPDX Check License](https://tools.spdx.org/app/check_license/) is part of the SPDX Online Tool suite and allows you to paste the text of a license or exception into a text box and it will match it against all the licenses and exceptions in the SPDX License List, implementing the SPDX Matching Guidelines. Because of its thoroughness, this tool may take a bit of time to give an answer. It will tell you if there is a match or not and if it finds a close match, but won’t indicate a diff. 

SDPX Check License is an open source Django application and the source code is located https://github.com/spdx/spdx-online-tools

## SPDX-license-diff
SPDX-license-diff is a add-on or extension for [Firefox](https://addons.mozilla.org/en-US/firefox/addon/spdx-license-diff/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search) and Chromium/[Chrome](https://chrome.google.com/webstore/detail/spdx-license-diff/kfoadicmilbgnicoldjmccpaicejacdh?hl=en). Once installed, you can highlight the text of a license on a web pages and it will find the closest matches, on the SPDX License List. 

The result will display the differences in text as compared to the best match. Matches indicate a percentage score for the match and a drop-down of licenses with decreasing matches. Choosing another license in the drop-down will recreate the diff view based on that license.   

In some cases, differences will display that are actually accounted for by the SPDX matching guidelines. If it’s a close match, (e.g., only the name of the copyright holder or author, or other non-substantive seeming differences) it is recommended to cross-check against the actual XML template for the given license.

SPDX-license-diff is an open source tool and the code is located at https://github.com/spdx/spdx-license-diff

## Google site search
Sometimes you might use one or both of the above tools and still think there is something familiar about the license. You can also try using a Google site search and search on a specific phrase of text. 

To do so, type the following into the search bar `site:https://spdx.org/licenses/  "specific text phrase between quotes"`

# Guidance related to specific licenses

## Historical Permission and Notice Disclaimer (HPND)

`HPND` was [submitted to the Open Source Initiative for approval in 2002](http://lists.opensource.org/pipermail/license-discuss_lists.opensource.org/2002-November/006304.html) with the goal of being able to recognize the many open source packages that use this template. 

Because it has a lot of templating, license matching tools may have a hard time identifying licenses that matches to the multiple variations allowed by the template. As of recently, the SPDX License List has added additional variants that do not match any of the templating options. This may mean something HPND-like will be picked up by the license matching tools, but not matches to the templatized original version.

If you find a license that starts with `Permission to use, copy, modify, and distribute this software and its documentation for any purpose and without fee is hereby granted,` it may be worth taking a closer look at `HPND` and other licenses that are related to it currently on the SPDX License List. A [Google doc](https://docs.google.com/document/d/1xqSwTfJJ7btkhbblrIAZxOxv0iZPmAMGar9rU7DLKC8/edit) has been made to help "see" all of the variations of HPND in one place and in a more human-readable way, than looking at various individual XML files.

## BSD-3-Clause

`BSD-3-Clause` is one of the licenses that provided incentive to accommodate "replaceable" text as explained in section B.3.4 of the [SPDX License Matching Guidelines](https://spdx.github.io/spdx-spec/v2.3/license-matching-guidelines-and-templates/). Specifically, clause 3 may include different names or different wording to accommodate the restriction on use of the name that are non-substantive differences. 

If you find a license that matches mostly matches to `BSD-3-Clause` except differences such as this, you will need to look at the [XML file](https://github.com/spdx/license-list-XML/blob/main/src/BSD-3-Clause.xml) to get an accurate representation of what variations are allowed for the license you found to still be considered a match to `BSD-3-Clause`. If you have a hard time seeing the various mark-up options in the XML file, we created [this Google doc](https://docs.google.com/document/d/1xqSwTfJJ7btkhbblrIAZxOxv0iZPmAMGar9rU7DLKC8/edit) displays the markup options in a more visually accessible way. 


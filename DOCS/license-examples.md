This is a working document to capture licensing examples found "in the wild" and how they would be mapped using the SPDX specification license fields

NOTE TO REMOVE: This is not where this information should ultimately be located, but just putting it here to get it written and can move as appropriate later!!

# 1. Github example
## scenario:
* you have a package with 10 files
* 1 of these files = LICENSE.txt file with a copy of the MIT license
* the other 9 files have no licensing information whatsoever
## license info:
at package level:
* Declared Licensem= MIT
* Concluded License = MIT
* Comments on License
* * The package level license is MIT and no other license information is found. 

at file level:
* Declared License
* * LICENSE.txt file = MIT
* * other 9 files = NONE
* Concluded License
* * LICENSE.txt file = MIT
* * other 9 files = MIT
* Comments on License
* * LICENSE.txt file = (no comment necessary)
* * other 9 files = The package level license is MIT and no other license information is found.

# 1. NAME example
## scenario:
* xyz
## license info:
at package level:
* Declared License
* * LICENSE.txt file = 
* * other 9 files = 
* Concluded License
* * LICENSE.txt file = 
* * other 9 files = 
* Comments on License
* * LICENSE.txt file = 
* * other 9 files = 
at file level:
* Declared License
* * LICENSE.txt file = 
* * other 9 files = 
* Concluded License
* * LICENSE.txt file = 
* * other 9 files = 
* Comments on License
* * LICENSE.txt file = 
* * other 9 files = 

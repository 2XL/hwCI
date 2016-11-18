#!/bin/bash

exit 0
grep -rnw '/path/to/somewhere' -e "pattern"

# -r recursive
# -n line number
# -w match whole word
# -l  
# 
# grep --exclude=*.o -rnw '/path/to/somewhere/' -e "pattern"
# grep --exclude-dir={dir1,dir2,*.dst} -rnw '/path/to/somewhere/' -e "pattern"

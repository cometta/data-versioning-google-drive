#!/bin/bash

 awk -v FS="," '

 function filter_columns()
 {
     return sprintf("%s, %s, %s, %s", $1, $2, $(NF-1), $NF);
 }

 NF !=0 && NR == FNR {
    if (NR == 1) {
            print filter_columns();
    } else {
            memory[line++] = filter_columns();
    }
 } NF != 0 && NR != FNR {
    if (FNR == 1) {
            line = 0;
    } else {
            new_line = filter_columns();
            if (new_line != memory[line++]) {
                    print new_line;
            }
    }
 }' $1 $2
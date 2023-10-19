#!/bin/bash

# Use awk to load the columns into arrays
awk '{
    array1[NR] = $1
    array2[NR] = $2
    array3[NR] = $3
    array4[NR] = $4
}
END {
}' Array_List.txt

letters=""
other=""
letters_count=0
line_count=0

while read -r col1 col2 col3 col4; do
    if [[ "$col1" =~ [A-Za-z] && "$col2" =~ [A-Za-z] && "$letters_count" -lt 5 ]]; then
        letters="${letters}${col1}${col2}\n"
        letters_count=$((letters_count + 1))
    else
        if [ "$line_count" -ge 5 ]; then
            other="${other}${col3} and ${col4}\n"
        fi
    fi
    line_count=$((line_count + 1))
done < Array_List.txt

#output="${letters}${other}"
echo -e "${letters}"
echo -e "${other}"

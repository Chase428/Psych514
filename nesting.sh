#!/bin/bash

#The explanations in parentheses were copied from ChatGPT.

#One way of doing this
for ((i=0; i<4; i++)); do
    letter=$(printf \\$(printf '%03o' $((97 + i)))) 
    for ((j=0; j<=i; j++)); do
        echo "$letter"
    done
    echo
done

#A second way of doing this
letters=("a" "b" "c" "d")
for ((i = 0; i < ${#letters[@]}; i++)); do
    current_letter=${letters[i]}
    for ((j = 0; j <= i; j++)); do
        echo "$current_letter "
    done
    echo
done
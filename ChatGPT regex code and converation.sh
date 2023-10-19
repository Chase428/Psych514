#!/bin/bash -xe

#The rationale from ChatGPT is included in the comments and is quoted directly from ChatGPT.
for input in "A_B-C_D" "1_2-3_4" "aa_bb-cc_dd"; do
	echo ${input%%_*} #"This removes the longest substring from the end of the variable '$input' until the first underscore '_'.  In the first iteration of the loop, it will output "A"."
	echo ${input#*_} | cut -d '-' -f1 #"This removes the shortest substring from the beginning until the first underscore '_', and then it pipes the result to 'cut' with a delimiter of '-' to keep the first part."
	echo ${input#*_} | cut -d'_' -f1 #"Similar to the previous line, but it uses an underscore '_' as the delimiter."
	echo ${input##*_} #"This removes the longest substring from the beginning until the last underscore '_'.
	echo foo-${input%%-*} #"This removes the longest string from the end until the first hyphen '-', and then prepends "foo-"."
	echo #This is not from ChatGPT, but it didn't analyze this line.  This line echoes a blank line in between the string iterations.
done

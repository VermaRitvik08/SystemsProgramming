#!/bin/bash

# Filename: ex21.sh
#
# Problem: Count the number of quotes each person had in the top 100 quote
# list. Then output the list of names in alphabetical order with the number of quotes each.
cat ex21.input | awk '{
		if (match($0,"-")) { 
			name=substr($0,0,match($0,"-")-1); 
			q[name] = q[name] + 1; }
	}
	END {
		for (i in q) {
			print i " had " q[i] " quotes.";
		}
	}' | sort -k 1 


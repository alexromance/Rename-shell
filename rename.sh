#!/bin/bash

# $0 is the execute shell itshelf
# sp xx special season
# s01 e02 s season e episodes
# ./rename.sh /xxxx /xxxx/s01e mkv xxx*
readarray -d '' entries < <(printf '%s\0' $(find $1 -name "*.$3" ! -name "$4") | sort -zV)
i=101; 
for entry in "${entries[@]}"; do
  #echo "$entry";
  ln -s "$entry" "$2${i#1}.$3";
  ((i++));
done

#!/bin/bash

i=0
while read line; do
  echo $line > app/static/quotes/$i.txt
  i=$((i+1))
done < quotes.txt
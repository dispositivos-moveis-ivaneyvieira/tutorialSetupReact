#!/bin/bash

while sleep 1 
do 
  find . \( -name "*.md"  -o -name "*.puml" -o -name "*.tex" -o -name "*.Rmd" -o -name "*.bib" \) | 
    entr -d ./render.sh
done

#!/bin/bash

plantuml *.puml

find *.Rmd | while read file; do
  Rscript -e "rmarkdown::render('$file', output_format = 'all')"
done

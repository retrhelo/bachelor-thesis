#!/usr/bin/bash

# Build up bibliography
echo >main.bib
for i in bibliography/*; do
  cat $i >main.bib
done

# First build main.aux
xelatex main

# Then build main.blb
bibtex main

# Build main.pdf
xelatex main
xelatex main

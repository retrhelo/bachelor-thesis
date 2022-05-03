#!/usr/bin/bash

# Build up bibliography
echo >main.bib
for i in bibliography/*.bib; do
  cat $i >>main.bib
done

# First build main.aux
xelatex main || exit -1;

# Then build main.blb
bibtex main || exit -1;

# Build main.pdf
xelatex main || exit -1;
xelatex main || exit -1;

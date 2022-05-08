#!/usr/bin/bash

# Build up bibliography
echo >main.bib
for i in bibliography/*.bib; do
  cat $i >>main.bib
done

XELATEX='xelatex --shell-escape'

# First build main.aux
$XELATEX main || exit -1;

# Then build main.blb
bibtex main || exit -1;

# Build main.pdf
$XELATEX main || exit -1;
$XELATEX main || exit -1;

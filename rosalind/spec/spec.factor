! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs assocs.extras grouping.extras io io.encodings.utf8
io.files kernel math math.functions math.parser prettyprint
rosalind.common sequences sequences.extras sorting splitting
strings ;
IN: rosalind.spec

: inv-mass-table ( -- assoc )
  protein-mass-table [ 20 * round >integer ] map-values assoc-invert ;

: spec ( seq -- ans )
  natural-sort [ swap - 20 * round >integer ] 2clump-map
  inv-mass-table substitute >string ;

: spec-main ( -- )
  "datasets/rosalind/spec.txt" utf8 file-contents "\n" split [ dec> ] map
  spec print ;

MAIN: spec-main
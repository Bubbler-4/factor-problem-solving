! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io.encodings.utf8 io.files math
math.statistics prettyprint rosalind.common rosalind.prot
sequences ;
IN: rosalind.mrna

: mrna ( protein -- n )
  "." append >array amino-table histogram substitute product 1000000 mod ;

: mrna-main ( -- ) "datasets/rosalind/mrna.txt" utf8 file-contents
  mrna . ;

MAIN: mrna-main
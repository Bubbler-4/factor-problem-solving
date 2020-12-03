! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: grouping io io.encodings.utf8 io.files kernel math
math.parser sequences splitting ;
IN: rosalind.subs

: subs ( string motif -- indices )
  [ length clump ] [ swap indices [ 1 + ] map ] bi ;

: subs-main ( -- ) "datasets/rosalind/subs.txt" utf8 file-contents
  "\n" split first2 subs [ number>string ] map " " join print ;

MAIN: subs-main
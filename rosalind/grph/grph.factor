! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs io io.encodings.utf8 io.files kernel
math.combinatorics rosalind.common sequences ;
IN: rosalind.grph

: grph ( assoc -- edges )
  2 <k-permutations> [ values first2 [ 3 tail* ] [ 3 head ] bi* = ] filter
  [ keys ] map ;

: grph-main ( -- ) "datasets/rosalind/grph.txt" utf8 file-contents
  fasta>assoc grph [ " " join print ] each ;

MAIN: grph-main
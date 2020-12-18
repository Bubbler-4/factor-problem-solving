! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs io io.encodings.utf8 io.files kernel math
math.parser rosalind.common sequences sequences.extras ;
IN: rosalind.pdst

: diff% ( seq1 seq2 -- % )
  [ [ = not ] 2count ] [ nip length ] 2bi /f ;
 
: pdst ( seq -- matrix )
  dup [ diff% ] cartesian-map ;

: pdst-main ( -- ) "datasets/rosalind/pdst.txt" utf8 file-contents
  fasta>assoc values pdst [ [ number>string ] map " " join print ] each ;

MAIN: pdst-main
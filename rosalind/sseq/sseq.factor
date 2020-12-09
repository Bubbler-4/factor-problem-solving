! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs fry io io.encodings.utf8 io.files kernel math
math.parser rosalind.common sequences ;
IN: rosalind.sseq

: sseq ( str subseq -- indices )
  0 rot '[ swap _ index-from 1 + ] { } accumulate*-as ;

: sseq-main ( -- ) "datasets/rosalind/sseq.txt" utf8 file-contents
  fasta>assoc values first2 sseq [ number>string ] map " " join print ;

MAIN: sseq-main
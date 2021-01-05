! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io io.encodings.utf8 io.files kernel locals
math rosalind.common sequences vectors ;
IN: rosalind.lcsq

:: (lcsq) ( subseqs elem seq2 -- subseqs' )
  "" 1vector seq2 [| elem2 idx |
    dup last idx 1 + subseqs nth
    elem elem2 = idx subseqs nth elem suffix "" ?
    3array longest suffix!
  ] each-index ;

:: lcsq ( seq1 seq2 -- seq )
  seq2 length 1 + "" <array>
  seq1 [ seq2 (lcsq) ] each last ;

: lcsq-main ( -- ) "datasets/rosalind/lcsq.txt" utf8 file-contents
  fasta>assoc values first2 lcsq print ;

MAIN: lcsq-main
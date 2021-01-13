! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io.encodings.utf8 io.files kernel locals
math prettyprint rosalind.common sequences vectors ;
IN: rosalind.edit

:: (edit) ( dists elem seq2 -- dists' )
  dists first 1 + 1vector seq2 [| elem2 idx |
    dup last 1 + idx 1 + dists nth 1 +
    elem elem2 = 0 1 ? idx dists nth +
    3array infimum suffix!
  ] each-index ;

:: edit ( seq1 seq2 -- n )
  seq2 length 1 + <iota>
  seq1 [ seq2 (edit) ] each last ;

: edit-main ( -- )
  "datasets/rosalind/edit.txt" utf8 file-contents
  fasta>assoc values first2 edit . ;

MAIN: edit-main
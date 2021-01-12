! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs assocs.extras grouping io.encodings.utf8 io.files
kernel math.combinatorics prettyprint rosalind.common sequences
sorting ;
IN: rosalind.mmch

: mmch ( str -- ans )
  "AUGC" counts values 2 group
  [ first2 sort-pair swap nPk ] map product ;

: mmch-main ( -- )
  "datasets/rosalind/mmch.txt" utf8 file-contents
  fasta>assoc values first mmch . ;

MAIN: mmch-main
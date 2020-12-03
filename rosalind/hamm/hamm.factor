! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files kernel prettyprint sequences
sequences.extras splitting ;
IN: rosalind.hamm

: hamm ( string1 string2 -- count )
  [ = not ] 2count ;

: hamm-main ( -- ) "datasets/rosalind/hamm.txt" utf8 file-contents
  "\n" split first2 hamm . ;

MAIN: hamm-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files math math.combinatorics
math.parser prettyprint sequences splitting ;
IN: rosalind.pper

: pper ( n k -- ans ) nPk 1000000 mod ;

: pper-main ( -- ) "datasets/rosalind/pper.txt" utf8 file-contents
  " " split [ dec> ] map first2 pper . ;

MAIN: pper-main
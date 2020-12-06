! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files kernel math.combinatorics
math.parser sequences sets splitting ;
IN: rosalind.lexf

: lexf ( alphabet length -- strings ) selections ;

: lexf-main ( -- ) "datasets/rosalind/lexf.txt" utf8 file-contents
  "\n" split first2 [ " " diff ] [ dec> ] bi* lexf
  "/tmp/output.txt" utf8 set-file-lines ;

MAIN: lexf-main
! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io io.encodings.utf8 io.files kernel math
math.parser sequences splitting ;
IN: rosalind.eval

: (eval) ( n str gc-content -- prob )
  2 / 0.5 over - 2array dup append "CAGT" swap zip
  [ dup >array ] dip substitute product
  [ length - 1 + ] dip * ;

: eval ( n str gc-contents -- seq ) [ (eval) ] 2with map ;

: eval-main ( -- )
  "datasets/rosalind/eval.txt" utf8 file-contents "\n" split first3
  [ dec> ] [ ] [ " " split [ dec> ] map ] tri*
  eval [ 10 >base ] map " " join print ;

MAIN: eval-main
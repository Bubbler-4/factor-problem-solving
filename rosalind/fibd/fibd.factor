! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files kernel math math.parser
prettyprint sequences splitting ;
IN: rosalind.fibd

: fibd ( n m -- ans )
  { 1 } swap 0 pad-tail swap 1 - [ dup rest sum prefix but-last ] times sum ;

: fibd-main ( -- ) "datasets/rosalind/fibd.txt" utf8 file-contents
  " " split [ string>number ] map first2 fibd . ;

MAIN: fibd-main
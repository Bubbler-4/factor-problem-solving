! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: fry io.encodings.utf8 io.files kernel math math.parser
prettyprint sequences splitting ;
IN: rosalind.fib

: fib ( n k -- ans )
  [ 1 1 ] 2dip [ 1 - ] dip
  '[ [ _ * + ] [ drop ] 2bi ] times nip ;

: fib-main ( -- ) "datasets/rosalind/fib.txt" utf8 file-contents
  " " split [ string>number ] map first2
  fib . ;

MAIN: fib-main

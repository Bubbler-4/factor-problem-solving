! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files kernel math math.parser
math.polynomials prettyprint sequences splitting ;
IN: rosalind.lia

: lia ( k n -- p )
  [ { 3/4 1/4 } ] 2dip [ 2^ p^ ] dip tail sum >float ;

: lia-main ( -- ) "datasets/rosalind/lia.txt" utf8 file-contents
  " " split [ dec> ] map first2 lia . ;

MAIN: lia-main
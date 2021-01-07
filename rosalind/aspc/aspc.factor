! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files kernel math math.combinatorics
math.parser math.ranges prettyprint sequences splitting ;
IN: rosalind.aspc

: aspc ( n m -- ans )
  [ drop ] [ swap [a,b] ] 2bi [ nCk ] with map sum 1000000 rem ;

: aspc-main ( -- ) "datasets/rosalind/aspc.txt" utf8 file-contents
  " " split [ dec> ] map first2 aspc . ;

MAIN: aspc-main
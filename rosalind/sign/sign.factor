! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io io.encodings.utf8 io.files kernel math.combinatorics
math.parser math.ranges math.vectors prettyprint sequences ;
IN: rosalind.sign

: sign ( n -- seq len )
  [ [1,b] all-permutations ]
  [ { -1 1 } swap selections ] bi
  [ v* ] cartesian-map concat dup length ;

: sign-main ( -- ) "datasets/rosalind/sign.txt" utf8 file-contents dec>
  "/tmp/sign.txt" utf8 <file-writer> [
    sign . [ [ number>string ] map " " join print ] each
  ] with-output-stream ;

MAIN: sign-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io io.encodings.utf8 io.files kernel locals math
math.functions math.parser prettyprint sequences splitting ;
IN: aoc2020.day25

:: modlog ( n -- m ) ! 7^x == n mod 20201227
  1 20201227 [ drop [ 7 * 20201227 mod ] [ n = ] bi ] find-integer nip ;

: day25-silver ( n m -- ans ) modlog 20201227 ^mod ;

: day25-gold ( n m -- str ) 2drop "Yay, all stars complete!" ;

: day25-main ( -- ) "datasets/aoc2020/day25.txt" utf8 file-contents
  "\n" split [ string>number ] map first2
  [ day25-silver . ] [ day25-gold print ] 2bi ;

MAIN: day25-main
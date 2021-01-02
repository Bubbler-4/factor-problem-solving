! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io.encodings.utf8 io.files kernel math
math.vectors prettyprint sequences sequences.extras sets ;
IN: aoc2015.day3

: path-coords ( str -- seq )
  >array ">^<v" zip-index substitute C{ 0 1 } swap n^v
  0 prefix 0 [ + ] accumulate* ;

: day3-silver ( str -- n )
  path-coords cardinality ;

: day3-gold ( str -- n )
  [ <evens> path-coords ] [ <odds> path-coords ] bi
  append cardinality ;

: day3-main ( -- ) "datasets/aoc2015/day3.txt" utf8 file-contents
  [ day3-silver . ] [ day3-gold . ] bi ;

MAIN: day3-main
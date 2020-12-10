! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs fry grouping.extras io.encodings.utf8 io.files
kernel math math.parser math.ranges math.statistics prettyprint
sequences sorting splitting ;
IN: aoc2020.day10

: sort+minmax ( seq -- seq' )
  natural-sort 0 prefix dup last 3 + suffix ;

: day10-silver ( seq -- n )
  sort+minmax [ swap - ] 2clump-map histogram
  { 1 3 } swap substitute first2 * ;

: day10-gold ( seq -- n )
  sort+minmax [ last [0,b] ] keep '[ _ member? 1 0 ? ] map
  { 1 0 0 } [ over sum * suffix rest ] reduce last ;

: day10-main ( -- ) "datasets/aoc2020/day10.txt" utf8 file-contents "\n" split [ dec> ] map
  [ day10-silver . ] [ day10-gold . ] bi ;

MAIN: day10-main
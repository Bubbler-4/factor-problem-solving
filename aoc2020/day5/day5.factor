! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs io.encodings.utf8 io.files kernel math.parser
math.ranges math.statistics prettyprint sequences sets splitting
;
IN: aoc2020.day5

: seatcode ( string -- value )
  "FBLR" "0101" zip substitute bin> ;

: day5-silver ( strings -- highest )
  [ seatcode ] map supremum ;

: day5-gold ( strings -- n )
  [ seatcode ] map [ minmax [a,b] ] [ diff ] bi first ;

: day5-main ( -- ) "datasets/aoc2020/day5.txt" utf8 file-contents "\n" split
  [ day5-silver . ] [ day5-gold . ] bi ;

MAIN: day5-main
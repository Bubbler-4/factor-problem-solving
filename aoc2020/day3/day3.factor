! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: fry io.encodings.utf8 io.files kernel math math.vectors
prettyprint sequences splitting grouping ;
IN: aoc2020.day3

: trees-on-slope ( lines slope -- count )
  [ denominator group [ first ] map ]
  [ nip numerator '[ _ * over length mod swap nth ] map-index ] 2bi
  [ 35 = ] count ;

: day3-silver ( lines -- count )
  3 trees-on-slope ;

: day3-gold ( lines -- count )
  { 1 3 5 7 1/2 } swap '[ _ swap trees-on-slope ] map product ;

: day3-main ( -- ) "datasets/aoc2020/day3.txt" utf8 file-contents "\n" split
  [ day3-silver . ] [ day3-gold . ] bi ;

MAIN: day3-main
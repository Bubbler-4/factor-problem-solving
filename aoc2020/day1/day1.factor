! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io io.encodings.utf8 io.files kernel math.combinatorics
math.parser prettyprint sequences splitting ;
IN: aoc2020.day1

: day1-silver ( seq -- prod )
  2 all-combinations [ sum 2020 = ] find nip product ;

: day1-gold ( seq -- prod )
  3 all-combinations [ sum 2020 = ] find nip product ;

: day1-main ( -- ) "datasets/aoc2020/day1.txt" utf8 file-contents "\n" split [ string>number ] map
  [ day1-silver . ] [ day1-gold . ] bi ;

MAIN: day1-main
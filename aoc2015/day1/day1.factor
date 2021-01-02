! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays io.encodings.utf8 io.files kernel math
math.vectors prettyprint sequences ;
IN: aoc2015.day1

: day1-silver ( str -- n )
  >array -1 swap n^v sum ;

: day1-gold ( str -- n )
  >array -1 swap n^v 0 [ + ] accumulate* -1 swap index 1 + ;

: day1-main ( -- ) "datasets/aoc2015/day1.txt" utf8 file-contents
  [ day1-silver . ] [ day1-gold . ] bi ;

MAIN: day1-main
! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays io.encodings.utf8 io.files kernel math math.parser
math.vectors prettyprint sequences sorting splitting ;
IN: aoc2015.day2

: wrapping-paper ( seq -- n )
  natural-sort dup first3 rot 3array v* { 3 2 2 } v. ;

: day2-silver ( seq -- n )
  [ wrapping-paper ] map sum ;

: ribbon ( seq -- n )
  natural-sort [ { 2 2 0 } v. ] [ product ] bi + ;

: day2-gold ( seq -- n )
  [ ribbon ] map sum ;

: day2-main ( -- ) "datasets/aoc2015/day2.txt" utf8 file-contents
  "\n" split [ "x" split [ dec> ] map ] map
  [ day2-silver . ] [ day2-gold . ] bi ;

MAIN: day2-main
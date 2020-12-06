! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files kernel prettyprint sequences
sets splitting ;
IN: aoc2020.day6

: day6-silver ( answers -- sum )
  [ combine length ] map sum ;

: day6-gold ( answers -- sum )
  [ intersection length ] map sum ;

: day6-main ( -- ) "datasets/aoc2020/day6.txt" utf8 file-contents
  "\n\n" split-subseq [ "\n" split ] map
  [ day6-silver . ] [ day6-gold . ] bi ;

MAIN: day6-main
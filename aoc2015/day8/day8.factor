! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs assocs.extras eval io.encodings.utf8 io.files
kernel math prettyprint regexp sequences splitting ;
IN: aoc2015.day8

: day8-data ( -- data )
  "datasets/aoc2015/day8.txt" utf8 file-contents "\n" split ;

: (day8-silver) ( str -- n )
  R/ \\("|\\|x..)/ all-matching-slices [ length 1 - ] map sum 2 + ;

: (day8-silver)' ( str -- n )
  dup eval( -- x ) [ length ] bi@ - ;

: day8-silver ( strs -- n ) [ (day8-silver) ] map sum ;

: (day8-gold) ( str -- n )
  "\"\\" counts values sum 2 + ;

: (day8-gold)' ( str -- n )
  dup unparse [ length ] bi@ - neg ;

: day8-gold ( strs -- n ) [ (day8-gold) ] map sum ;

: day8-main ( -- )
  day8-data [ day8-silver . ] [ day8-gold . ] bi ;

MAIN: day8-main
! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays grouping.extras io.encodings.utf8 io.files kernel
math math.parser prettyprint sequences ;
IN: aoc2015.day10

: day10-data ( -- data )
  "datasets/aoc2015/day10.txt" utf8 file-contents string>digits ;

: look-say ( seq -- seq' )
  [ ] group-by [ first2 length swap 2array ] map concat ;

: day10-silver ( seq -- n ) 40 [ look-say ] times length ;

: day10-gold ( seq -- n ) 50 [ look-say ] times length ;

: day10-main ( -- )
  day10-data [ day10-silver . ] [ day10-gold . ] bi ;

MAIN: day10-main
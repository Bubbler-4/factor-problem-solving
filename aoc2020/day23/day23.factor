! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays grouping io.encodings.utf8 io.files kernel locals
math math.ranges prettyprint sequences vectors ;
IN: aoc2020.day23

: 1turn ( seq -- seq' )
  unclip [ 3 cut ] dip [ suffix ] keep  ! 3head 3tail item
  [ 2dup swap member? ] [ 2 - 9 rem 1 + ] do until over index
  1 + cut surround ;

: day23-silver ( seq -- seq' ) 100 [ 1turn ] times ;

: circ-array ( seq -- seq' )
  [ [ ] map ] keep dup first suffix 2 clump
  [ first2 swap pick set-nth ] each ;

: take-from ( circ n k -- seq )
  [ over nth dup ] collector [ times ] dip 2nip ;

:: 1turn' ( circ n -- circ n' )
  circ n 3 take-from dup last circ nth n circ set-nth
  n [ 2dup swap member? ] [ 1 - 1000000 rem ] do while :> m
  dup last m circ nth swap circ set-nth first m circ set-nth
  circ n over nth ;

: day23-gold ( seq -- n )
  [ 1 - ] map 9 999999 [a,b] append [ circ-array ] [ first ] bi
  10000000 [ 1turn' ] times drop 0 2 take-from [ 1 + ] map product ;

: day23-main ( -- ) "datasets/aoc2020/day23.txt" utf8 file-contents >array [ 48 - ] map
  [ day23-silver . ] [ day23-gold . ] bi ;

MAIN: day23-main
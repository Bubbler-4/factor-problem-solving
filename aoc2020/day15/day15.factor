! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io.encodings.utf8 io.files kernel locals
math math.parser prettyprint sequences splitting ;
IN: aoc2020.day15

: next-term ( seq -- n )
  unclip-last swap reverse index ?1+ ;

: day15-silver ( seq -- n )
  2020 [ dup next-term suffix ] times 2019 swap nth ;

:: next-term' ( hash last i -- hash n i+1 )
  last hash at [ i swap - ] [ 0 ] if* :> n
  i last hash set-at
  hash n i 1 + ;

: day15-gold ( seq -- n )
  unclip-last over length [ H{ } zip-index-as ] 2dip
  29999999 over - [ next-term' ] times drop nip ;

:: next-term'' ( array last i -- array n i+1 )
  last array nth [ i swap - ] [ 0 ] if* :> n
  i last array set-nth
  array n i 1 + ;

: day15-gold2 ( seq -- n )
  [ but-last [ 30000000 f <array> ] dip [ spin [ set-nth ] keep ] each-index ] keep
  unclip-last swap length
  29999999 over - [ next-term'' ] times drop nip ;

: day15-main ( -- ) "datasets/aoc2020/day15.txt" utf8 file-contents "," split [ dec> ] map
  [ day15-silver . ] [ day15-gold2 . ] bi ;

MAIN: day15-main
! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs combinators combinators.short-circuit
hashtables io.encodings.utf8 io.files kernel locals math
math.parser prettyprint sequences sequences.extras splitting
strings ;
IN: aoc2015.day7

: day7-data ( -- assoc )
  "datasets/aoc2015/day7.txt" utf8 file-contents "\n" split
  [ " -> " split-subseq first2 >string swap " " split 2array ] map ;

DEFER: eval-expr
:: num-or-var ( cached assoc num/var -- cached n )
  cached num/var
  { [ dec> ] [ cached [ assoc swap eval-expr ] cache ] } 1|| ;

: eval-expr ( cached assoc str -- cached n )
  over at dup length {
    { 1 [ first num-or-var ] }
    { 2 [ last num-or-var 65535 bitxor ] }
    [ drop [ <evens> [ num-or-var ] with map first2 ] keep second {
      { "AND" [ bitand ] }
      { "OR" [ bitor ] }
      { "LSHIFT" [ shift ] }
      { "RSHIFT" [ neg shift ] }
    } case ]
  } case ;

: day7-silver ( assoc -- n ) f >hashtable swap "a" eval-expr nip ;

: day7-gold ( assoc -- n )
  [ day7-silver 10 >base 1array ] [ "b" swap set-at ] [ day7-silver ] tri ;

: day7-main ( -- )
  day7-data [ day7-silver . ] [ day7-gold . ] bi ;

MAIN: day7-main
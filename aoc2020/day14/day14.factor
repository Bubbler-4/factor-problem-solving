! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs combinators fry io.encodings.utf8 io.files
kernel math.parser prettyprint regexp sequences splitting
strings ;
IN: aoc2020.day14

: bitmask ( bit mask -- bit' )
  dup CHAR: X = -rot ? ;

: execute-line ( hash mask str -- hash mask' )
  " = " split-subseq [ >string ] map first2 over "mask" =
  [ 2nip ]
  [ [ >string R/ \d+/ first-match dec> ] [ dec> >bin 36 48 pad-head ] bi*
    pick [ bitmask ] 2map swap reach set-at
  ] if ;

: day14-silver ( lines -- ans )
  [ H{ } "" ] dip [ execute-line ] each
  drop values [ bin> ] map sum ;

: bitmask' ( bits masks -- bits' )
  { "" } [
    { { CHAR: 0 [ 1string 1array ] }
      { CHAR: 1 [ drop { "1" } ] }
      [ 2drop { "0" "1" } ]
    } case [ append ] cartesian-map concat ] 2reduce ;

: execute-line' ( hash mask str -- hash mask' )
  " = " split-subseq [ >string ] map first2 over "mask" =
  [ 2nip ]
  [ [ >string R/ \d+/ first-match dec> >bin 36 48 pad-head ] [ dec> ] bi*
    [ over bitmask' ] dip reach '[ _ swap _ set-at ] each
  ] if ;

: day14-gold ( lines -- ans )
  [ H{ } "" ] dip [ execute-line' ] each
  drop values sum ;

: day14-main ( -- ) "datasets/aoc2020/day14.txt" utf8 file-contents "\n" split
  [ day14-silver . ] [ day14-gold . ] bi ;

MAIN: day14-main
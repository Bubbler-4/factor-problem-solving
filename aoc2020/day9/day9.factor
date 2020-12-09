! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: fry grouping io.encodings.utf8 io.files kernel locals
math math.combinatorics math.parser math.ranges math.statistics
math.vectors prettyprint sequences sequences.extras splitting ;
IN: aoc2020.day9

: 2sums ( seq -- sums ) 2 [ sum ] map-combinations ;

: day9-silver ( data pre -- ans )
  1 + clump [ unclip-last swap 2sums member? not ] find nip last ;

: drop-large-tail ( data s -- data' )
  [ reverse ] dip '[ _ >= ] drop-while reverse ;

:: find-subseq-sum ( data s -- item )
  data all-subseqs data length tail [ sum s = ] find nip ;

:: day9-gold-naive ( data pre -- ans )
  data pre day9-silver :> s
  data s drop-large-tail s find-subseq-sum minmax + ;

: sum-accum ( data -- accum ) 0 [ + ] accumulate* 0 prefix ;

: 2+ranges ( data -- ranges )
  length [0,b) 2 [ { 0 1 } v+ ] map-combinations ;

:: day9-gold ( data pre -- ans )
  data pre day9-silver :> s  data sum-accum :> cumul
  data 2+ranges [ cumul nths first2 s - = ] find nip
  first2 data <slice> minmax + ;

: day9-main ( -- ) "datasets/aoc2020/day9.txt" utf8 file-contents "\n" split [ dec> ] map
  [ 25 day9-silver . ] [ 25 day9-gold-naive . ] [ 25 day9-gold . ] tri ;

MAIN: day9-main
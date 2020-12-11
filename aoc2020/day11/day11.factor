! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays combinators grouping io.encodings.utf8 io.files
kernel locals math math.combinatorics math.ranges math.vectors
prettyprint sequences sets splitting math.matrices ;
IN: aoc2020.day11

: matrix-pad0 ( matrix -- matrix' )
  2 [ [ 0 prefix 0 suffix ] map flip ] times ;

: 3x3-count-1s ( matrix -- matrix' )
  [ 3 clump [ [ 1 = ] count ] map ] map flip
  [ 3 clump [ sum ] map ] map flip ;

: next-state ( occupied seat -- seat' )
  { { -1 [ drop -1 ] }
    { 0 [ 0 = 1 0 ? ] }
    { 1 [ 4 <= 1 0 ? ] } } case ;

: next-state-matrix ( occupied seats -- seats' )
  [ [ next-state ] 2map ] 2map ;

: 1iteration ( seats -- seats' )
  [ matrix-pad0 3x3-count-1s ] keep next-state-matrix ;

: day11-silver ( matrix -- matrix' )
  [ 1iteration ] to-fixed-point concat [ 0 > ] count ;

: mnth ( coord matrix -- item )
  [ swap nth ] reduce ;

:: 1iteration' ( seats -- seats' )
  seats matrix-pad0 :> padded
  seats dim matrix-coordinates
  [ 1 v+n :> coord
    { { 0 1 } { 1 1 } { 1 0 } { 1 -1 } { 0 -1 } { -1 -1 } { -1 0 } { -1 1 } } [
      :> dir
      coord -1 [ dup 0 < ] [ drop dir v+ dup padded mnth ] while
      nip 0 >
    ] count
  ] matrix-map
  seats next-state-matrix ;

: day11-gold ( matrix -- matrix' )
  [ 1iteration' ] to-fixed-point concat [ 0 > ] count ;

: day11-main ( -- ) "datasets/aoc2020/day11.txt" utf8 file-contents
  "\n" split [ >array 76 v-n 30 v/n ] map
  [ day11-silver . ] [ day11-gold . ] bi ;

MAIN: day11-main
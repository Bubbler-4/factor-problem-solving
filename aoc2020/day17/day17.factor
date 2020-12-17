! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays grouping.extras io.encodings.utf8 io.files kernel
math math.matrices math.vectors prettyprint sequences
sequences.extras splitting ;
IN: aoc2020.day17

: life3d-pad1 ( array -- array' )
  [ ] [ length 2 + ] [ first [ [ drop 0 ] map ] map ] tri pad-center
  [ [ ] [ length 2 + ] [ first [ drop 0 ] map ] tri pad-center ] map
  [ [ [ ] [ length 2 + ] bi 0 pad-center ] map ] map ;

: life3d-counts ( array -- array' )
  [ m+ m+ ] 3clump-map
  [ [ v+ v+ ] 3clump-map ] map
  [ [ [ + + ] 3clump-map ] map ] map ;

: life3d-next ( sums self -- next )
  [ [ [ [ drop 3 = ] [ - 3 = ] 2bi or 1 0 ? ] 2map ] 2map ] 2map ;

: life3d-1iter ( array -- array' )
  life3d-pad1 [ life3d-pad1 life3d-counts ] keep life3d-next ;

: life4d-pad1 ( array -- array' )
  [ ] [ length 2 + ] [ first [ [ [ drop 0 ] map ] map ] map ] tri pad-center
  [ life3d-pad1 ] map ;

: life4d-counts ( array -- array' )
  [ [ m+ m+ ] 3map ] 3clump-map
  [ life3d-counts ] map ;

: life4d-next ( sums self -- next )
  [ life3d-next ] 2map ;

: life4d-1iter ( array -- array' )
  life4d-pad1 [ life4d-pad1 life4d-counts ] keep life4d-next ;

: day17-silver ( array -- sum )
  1array 6 [ life3d-1iter ] times concat concat sum ;

: day17-gold ( array -- sum )
  1array 1array 6 [ life4d-1iter ] times concat concat concat sum ;

: day17-main ( -- ) "datasets/aoc2020/day17.txt" utf8 file-contents
  "\n" split [ >array [ CHAR: # = 1 0 ? ] map ] map
  [ day17-silver . ] [ day17-gold . ] bi ;

MAIN: day17-main
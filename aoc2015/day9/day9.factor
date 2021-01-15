! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs grouping io.encodings.utf8 io.files kernel
locals math.combinatorics math.parser prettyprint sequences
sequences.extras sets splitting ;
IN: aoc2015.day9

: day9-data ( -- data )
  "datasets/aoc2015/day9.txt" utf8 file-contents "\n" split
  [ " = " split1 [ " to " split1 2array ] [ dec> ] bi* 2array ] map
  dup [ reverse ] map-keys append ;

:: all-path-lengths ( distances -- path-lengths )
  distances keys combine <permutations>
  [ 2 clump [ distances at ] map sum ] map ;

: day9-silver ( distances -- n ) all-path-lengths infimum ;

: day9-gold ( distances -- n ) all-path-lengths supremum ;

: day9-main ( -- )
  day9-data [ day9-silver . ] [ day9-gold . ] bi ;

MAIN: day9-main
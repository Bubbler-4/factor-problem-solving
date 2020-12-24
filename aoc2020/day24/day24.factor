! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs fry grouping io.encodings.utf8 io.files
kernel math math.functions math.matrices math.statistics
math.vectors prettyprint regexp sequences sequences.extras
splitting ;
IN: aoc2020.day24

: day24-silver ( coords -- n )
  histogram values [ odd? ] count ;

: pad-matrix ( mat -- mat' )
  dup [ first length 2 swap zero-matrix ] dup bi surround
  [ { 0 } { 0 } surround ] map ;

: 5x3-sums ( mat -- mat' )
  pad-matrix 5 clump [ flip 3 clump [ concat <odds> sum ] map ] map ;

: flip-cells ( mat1 mat2 -- mat )
  [ [ [ nip 2 = ] [ - -2 = ] 2bi or 1 0 ? ] 2map ] 2map ;

: valid-coords ( coords -- coords' )
  histogram [ nip odd? ] assoc-filter keys ;

: offset-coords ( coords -- coords' )
  dup vinfimum '[ _ v- ] map ;

: to-01-matrix ( coords -- mat )
  dup vsupremum 1 v+n first2 zero-matrix
  [ first2 swap pick nth 1 -rot set-nth ] reduce ;

: next-gol-state ( mat -- mat' )
  pad-matrix dup 5x3-sums flip-cells ;

: day24-gold ( coords -- n )
  valid-coords offset-coords to-01-matrix
  100 [ next-gol-state ] times concat sum ;

: str>offset ( str -- pair )
  { { "e" { 2 0 } } { "se" { 1 1 } } { "sw" { -1 1 } }
    { "w" { -2 0 } } { "nw" { -1 -1 } } { "ne" { 1 -1 } } } at ;

: str>coord ( str -- pair )
  R/ e|se|sw|w|nw|ne/ all-matching-subseqs [ str>offset ] [ v+ ] map-reduce ;

: day24-main ( -- )
  "datasets/aoc2020/day24.txt" utf8 file-contents "\n" split [ str>coord ] map
  [ day24-silver . ] [ day24-gold . ] bi ;

MAIN: day24-main
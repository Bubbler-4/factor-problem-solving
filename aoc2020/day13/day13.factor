! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs fry io.encodings.utf8 io.files kernel math
math.algebra math.parser prettyprint regexp sequences
sequences.extras splitting ;
IN: aoc2020.day13

: day13-silver-preprocess ( lines -- n seq )
  first2 [ dec> ] [ R/ \d+/ all-matching-subseqs [ dec> ] map ] bi* ;

: day13-silver ( n seq -- ans )
  swap neg '[ _ over rem ] { } map>assoc [ second ] infimum-by product ;

: day13-gold-preprocess ( lines -- seq )
  last "," split [ dec> ] map ;

: day13-gold ( seq -- ans )
  zip-index sift-keys [ neg ] map-values unzip swap chinese-remainder ;

: day13-main ( -- ) "datasets/aoc2020/day13.txt" utf8 file-contents "\n" split
  [ day13-silver-preprocess day13-silver . ]
  [ day13-gold-preprocess day13-gold . ]
  bi ;

MAIN: day13-main
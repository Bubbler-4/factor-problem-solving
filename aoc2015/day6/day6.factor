! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays byte-arrays combinators grouping io.encodings.utf8
io.files kernel locals math math.order math.parser math.ranges
prettyprint regexp sequences sequences.extras splitting strings
;
IN: aoc2015.day6

: extract-mode ( str -- mode )
  R/ on|off|toggle/ first-match >string ;

: extract-ranges ( str -- seq )
  R/ \d+/ all-matching-subseqs [ dec> ] map
  2 group flip ;

: day6-data ( -- data )
  "datasets/aoc2015/day6.txt" utf8 file-contents "\n" split
  [ [ extract-mode ] [ extract-ranges ] bi 2array ] map ;

: init-matrix ( -- matrix )
  1000 f <array> [ drop 1000 <byte-array> ] map ;

:: change-matrix-range ( matrix xrange yrange quot: ( x -- x ) -- matrix )
  yrange first2 [a,b] matrix
  [| row | xrange first2 [a,b] row quot change-nths row ] change-nths
  matrix ; inline

: run-command-silver ( matrix cmd -- matrix )
  first2 first2 rot {
    { "on" [ [ drop 1 ] change-matrix-range ] }
    { "off" [ [ drop 0 ] change-matrix-range ] }
    { "toggle" [ [ 1 swap - ] change-matrix-range ] }
  } case ;

: run-command-gold ( matrix cmd -- matrix )
  first2 first2 rot {
    { "on" [ [ 1 + ] change-matrix-range ] }
    { "off" [ [ 1 - 0 max ] change-matrix-range ] }
    { "toggle" [ [ 2 + ] change-matrix-range ] }
  } case ;

: day6-silver ( seq -- n )
  init-matrix [ run-command-silver ] reduce concat sum ;

: day6-gold ( seq -- n )
  init-matrix [ run-command-gold ] reduce concat sum ;

: day6-main ( -- )
  day6-data [ day6-silver . ] [ day6-gold . ] bi ;

MAIN: day6-main
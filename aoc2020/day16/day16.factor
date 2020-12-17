! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs fry grouping grouping.extras
io.encodings.utf8 io.files kernel locals math math.parser
math.ranges multiline prettyprint regexp sequences
sequences.extras sets sorting splitting strings ;
IN: aoc2020.day16

: all-numbers ( obj -- seq )
  >string R/ \d+/ all-matching-subseqs [ dec> ] map ;

: day16-preprocess ( str -- ranges mine others )
  "\n\n" split-subseq [ all-numbers ] map first3 [ 2 group ] 2dip ;

: day16-silver ( ranges mine others -- ans )
  nip swap [ first2 [a,b] ] map combine without sum ;

: 2ranges ( ranges -- 2ranges )
  [ first2 [a,b] ] map 2 group [ combine ] map ;

: filtered-columns ( 2ranges mine others -- columns )
  prepend over length group swap combine '[ _ subset? ] filter flip ;

: sort-by-inserted-value ( assoc -- keys )
  [ second length ] sort-with
  unzip { { } } prefix [ swap diff first ] 2clump-map zip
  sort-values keys ;

: fitting-ranges ( 2ranges column -- indices )
  '[ _ swap subset? ] find-all keys ;

:: day16-gold ( ranges mine others -- ans )
  ranges 2ranges :> 2ranges
  2ranges mine others filtered-columns :> columns
  mine columns [ 2ranges swap fitting-ranges ] map zip
  sort-by-inserted-value 6 head product ;

: day16-main ( -- ) "datasets/aoc2020/day16.txt" utf8 file-contents day16-preprocess
  [ day16-silver . ] [ day16-gold . ] 3bi ;

MAIN: day16-main
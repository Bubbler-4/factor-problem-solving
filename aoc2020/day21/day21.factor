! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs assocs.extras fry hash-sets io
io.encodings.utf8 io.files kernel math.statistics prettyprint
sequences sequences.extras sets sets.extras sorting splitting
strings ;
IN: aoc2020.day21

: preprocess-line ( str -- pair )
  " (contains " split-subseq first2 [ " " split ] [ but-last ", " split-subseq [ >string ] map ] bi* 2array ;

: containment-indices ( sets -- assoc )
  [ combine dup ] keep [ in? ] cartesian-map [ t swap indices >hash-set ] map zip ;

: preprocess-input ( foods -- ingredients allergens )
  [ preprocess-line ] map unzip [ containment-indices ] bi@ ;

: identify-matches ( ingredients allergens -- assoc )
  '[ _ [ dupd second superset? ] filter keys nip ] assoc-map ;

: day21-silver ( ingredients allergens -- n )
  [ identify-matches [ nip empty? ] assoc-filter ] keepd assoc-intersect
  values [ cardinality ] map sum ;
  ! values '[ nip _ [ dupd superset? ] none? nip ] assoc-filter values [ cardinality ] map sum ;

: find-one-match ( seq -- value key seq' )
  dup values histogram assoc-invert 1 of
  2dup swap assoc-invert at ! seq value key
  [ '[ _ = swap _ = or not ] assoc-filter ] 2keep rot ;

: find-all-matches ( seq -- assoc )
  { } swap [ find-one-match [ swap 2array suffix ] dip ] until-empty ;

: day21-gold ( ingredients allergens -- str )
  identify-matches harvest-values
  [ swap '[ _ swap 2array ] map ] { } assoc>map concat
  find-all-matches sort-values keys "," join ;

: day21-main ( -- ) "datasets/aoc2020/day21.txt" utf8 file-contents "\n" split preprocess-input
  [ day21-silver . ] [ day21-gold print ] 2bi ;

MAIN: day21-main
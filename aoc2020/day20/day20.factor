! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs assocs.extras combinators fry grouping
io.encodings.utf8 io.files kernel locals math math.order
math.parser math.statistics multiline prettyprint sequences
sequences.extras sets sets.extras splitting ;
IN: aoc2020.day20

! seq: array of boundaries, assoc: array of boundary -> id
: boundaries ( id matrix -- seq assoc )
  { [ first ] [ last ] [ flip first ] [ flip last ] } cleave 4array
  [ dup reverse min ] map swap dupd '[ _ ] { } map>assoc ;

: day20-silver ( tiles -- n )
  [ boundaries 2array ] { } assoc>map unzip assoc-combine
  [ concat histogram [ nip 1 = ] assoc-filter keys ] dip substitute
  histogram [ nip 2 = ] assoc-filter keys product ;

: top-left-match? ( edges tile -- ? )
  [ first ] [ flip first ] bi [ dup reverse ] bi@ 4array subset? ;

: orient-tile-2edge ( edges tile -- tile' )
  [ 2dup top-left-match? ] [ flip [ reverse ] map ] until nip ;

: orient-tile-left ( edge tile -- tile' )
  1array 4 [ dup last flip dup reverse 2array append ] times
  swap '[ [ first ] map _ = ] find nip ;

:: right-matching-tile ( tile tile-id border>ids tiles -- tile' tile-id' )
  tile flip last :> edge
  edge dup reverse min border>ids at sum tile-id - :> tile-id'
  edge tile-id' tiles at orient-tile-left tile-id' ;

:: form-tile-row ( tile tile-id border>ids tiles -- seq )
  tile tile-id 2array 1array
  11 [ dup last first2 border>ids tiles right-matching-tile 2array suffix ] times ;

STRING: sea-monster-base
                  # 
#    ##    ##    ###
 #  #  #  #  #  #   
;

: sea-monster ( -- seq )
  sea-monster-base { " ." } substitute "\n" split [ >array ] map ;

: find-sea-monster ( matrix -- n )
  3 clump [ flip 20 clump [ flip sea-monster [ [ <= ] 2all? ] 2all? ] count ] map sum ;

: find-sea-monster-anyway ( matrix -- n )
  1array 4 [ dup last flip dup reverse 2array append ] times
  [ find-sea-monster ] map supremum ;

:: day20-gold ( tiles -- n )
  tiles [ boundaries nip ] { } assoc>map concat :> boundary2id
  boundary2id [ first ] collect-by
  [ [ second ] map ] map-values :> borders ! border>ids
  borders [ nip length 1 = ] assoc-filter [ first ] assoc-map :> outer-borders
  outer-borders values duplicates first :> top-left-id
  top-left-id outer-borders [ swap ] { } assoc-map-as [ first ] collect-by at values
  top-left-id tiles at orient-tile-2edge :> oriented-top-left
  oriented-top-left top-left-id borders tiles form-tile-row
  [ first2 [ flip ] dip borders tiles form-tile-row [ first ] map ] map
  [ [ rest but-last [ rest but-last ] map ] map [ ] [ [ append ] 2map ] map-reduce ] map concat
  [ concat [ 35 = ] count ] [ find-sea-monster-anyway 15 * ] bi - ;

: day20-main ( -- ) "datasets/aoc2020/day20.txt" utf8 file-contents
  "\n\n" split-subseq [ "\n" split unclip 5 tail but-last dec> swap [ >array ] map ] H{ } map>assoc
  [ day20-silver . ] [ day20-gold . ] bi ;

MAIN: day20-main
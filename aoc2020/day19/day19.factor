! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs assocs.extras combinators
combinators.short-circuit fry grouping grouping.extras hash-sets
io.encodings.utf8 io.files kernel locals math math.parser
math.ranges math.vectors prettyprint regexp sequences
sequences.extras sequences.product sets splitting strings ;
IN: aoc2020.day19

: preprocess-ebnf ( str -- key value )
  ": " split-subseq first2 [ dec> ] dip
  dup first CHAR: " =
  [ rest but-last ] [ " | " split-subseq [ " " split [ dec> ] map ] map ] if ;

:: process-ebnf ( hash-before hash-after -- hash-before' hash-after' )
  hash-before [ [ hash-after substitute ] map ] map-values
  [ nip [ [ string? ] all? ] all? not ] assoc-partition
  [ [ concat ] map "|" join "(" ")" surround ] assoc-map hash-after assoc-union ;

: day19-silver ( grammar lines -- n ) swap
  [ nip string? not ] assoc-partition 120 [ process-ebnf ] times nip 0 of
  <regexp> '[ _ matches? ] count ;

: preprocess-ebnf' ( str -- key value )
  ": " split-subseq first2 [ dec> ] dip
  dup first CHAR: " =
  [ rest but-last 1array >hash-set ] [ " | " split-subseq [ " " split [ dec> ] map ] map ] if ;

:: process-ebnf' ( hash-before hash-after -- hash-before' hash-after' )
  hash-before [ [ hash-after substitute ] map ] map-values
  [ nip [ [ hash-set? ] all? ] all? not ] assoc-partition
  [ [ [ members ] map [ concat ] product-map >hash-set ] map combine ] assoc-map hash-after assoc-union ;

: day19-gold ( grammar lines -- n ) swap 
  [ nip string? not ] assoc-partition 8 [ process-ebnf ] times nip
  { 42 31 } swap substitute first2
  ! unfiltered <42> <31>
  5 [1,b] [
    pick over 1 + number>string "{" ",}" surround append
    pick rot number>string "{" "}" surround append append
  ] map "|" join 2nip <regexp> '[ _ matches? ] count ;

: day19-gold' ( grammar lines -- n ) [ 8 group ] map swap
  [ nip hash-set? not ] assoc-partition 8 [ process-ebnf' ] times nip
  42 of '[ [ _ in? ] map ] map
  [ { [ f swap member? ] [ dup vcount head vall? ] [ [ vcount 2 * ] [ length ] bi > ] } 1&& ] count ;

: day19-main ( -- ) "datasets/aoc2020/day19.txt" utf8 file-contents
  "\n\n" split-subseq first2 [ "\n" split ] bi@
  ! [ [ [ preprocess-ebnf ] H{ } map>assoc ] dip day19-silver . ]
  [ 2drop ]
  ! [ [ [ preprocess-ebnf ] H{ } map>assoc ] dip day19-gold . ]
  [ [ [ preprocess-ebnf' ] H{ } map>assoc ] dip day19-gold' . ]
  2bi ;

MAIN: day19-main
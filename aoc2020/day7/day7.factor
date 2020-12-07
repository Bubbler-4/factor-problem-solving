! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs fry io.encodings.utf8 io.files kernel math
math.parser prettyprint regexp sequences splitting strings ;
IN: aoc2020.day7

: parse-item ( str -- pair ) " " split1 swap dec> 2array ;

: parse-line ( str -- pair )
  " bags contain " split-subseq [ >string ] map first2
  dup "no other" swap subseq?
  [ drop { } ] [ R/ \sbags?[,.]\s?/ re-split but-last ] if [ parse-item ] map 2array ;

: contains-shiny-gold? ( str assoc -- ? )
  over "shiny gold" = [ 2drop t ]
  [ 2dup at -rot nip '[ _ contains-shiny-gold? ] any? ] if ;

: day7-silver ( assoc -- n )
  [ keys ] assoc-map [ keys ] keep '[ _ contains-shiny-gold? ] count 1 - ;

: bag-count ( str assoc -- n )
  [ at ] keep '[ swap _ bag-count * ] { } assoc>map sum 1 + ;

: day7-gold ( assoc -- n )
  "shiny gold" swap bag-count 1 - ;

: day7-main ( -- ) "datasets/aoc2020/day7.txt" utf8 file-contents
  "\n" split [ parse-line ] map H{ } assoc-like
  [ day7-silver . ] [ day7-gold . ] bi ;

MAIN: day7-main
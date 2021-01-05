! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: combinators.short-circuit fry grouping grouping.extras
io.encodings.utf8 io.files kernel math math.vectors prettyprint
sequences sequences.extras sets splitting ;
IN: aoc2015.day5

: three-vowels? ( str -- ? ) [ "aeiou" in? ] count 3 >= ;
: doubled-letter? ( str -- ? ) [ = ] 2clump-map vany? ;
: no-specific-comb? ( str -- ? ) 2 clump [ { "ab" "cd" "pq" "xy" } in? ] none? ;

: nice-silver? ( str -- ? )
  { [ three-vowels? ] [ doubled-letter? ] [ no-specific-comb? ] } 1&& ;

: day5-silver ( seq -- n ) [ nice-silver? ] count ;

: pair-twice? ( str -- ? ) [ 2 clump ] keep '[ _ count-subseq 2 >= ] any? ;
: char-repeat-1between? ( str -- ? ) [ nip = ] 3clump-map vany? ;

: nice-gold? ( str -- ? )
  { [ pair-twice? ] [ char-repeat-1between? ] } 1&& ;

: day5-gold ( seq -- n ) [ nice-gold? ] count ;

: day5-main ( -- ) "datasets/aoc2015/day5.txt" utf8 file-contents "\n" split
  [ day5-silver . ] [ day5-gold . ] bi ;

MAIN: day5-main
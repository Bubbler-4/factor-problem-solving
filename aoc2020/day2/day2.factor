! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: fry io.encodings.utf8 io.files kernel math.order
math.parser prettyprint sequences splitting ;
IN: aoc2020.day2

! spec: "1-2 a: abcde"
: spec> ( spec -- range char passwd )
  " " split first3 [ "-" split [ string>number ] map ] [ first ] [ ] tri* ;

: password-valid? ( spec -- ? )
  spec> swap '[ _ = ] count swap first2 between? ;

: day2-silver ( specs -- count )
  [ password-valid? ] count ;

: password-valid?' ( spec -- ? )
  spec> swapd 0 prefix nths swap '[ _ = ] count 1 = ;

: day2-gold ( specs -- count )
  [ password-valid?' ] count ;

: day2-main ( -- ) "datasets/aoc2020/day2.txt" utf8 file-contents "\n" split
  [ day2-silver . ] [ day2-gold . ] bi ;

MAIN: day2-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: aoc2020.day11 arrays math.vectors multiline sequences
splitting tools.test ;
IN: aoc2020.day11.tests

STRING: example
L.LL.LL.LL
LLLLLLL.LL
L.L.L..L..
LLLL.LL.LL
L.LL.LL.LL
L.LLLLL.LL
..L.L.....
LLLLLLLLLL
L.LLLLLL.L
L.LLLLL.LL
;

: preprocessed ( -- matrix ) example "\n" split [ >array 76 v-n 30 v/n ] map ;

{ 37 } [ preprocessed day11-silver ] unit-test
{ 26 } [ preprocessed day11-gold ] unit-test

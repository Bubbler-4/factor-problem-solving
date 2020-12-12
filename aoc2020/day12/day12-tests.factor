! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2020.day12 ;
IN: aoc2020.day12.tests

STRING: example
F10
N3
F7
R90
F11
;

: preprocessed ( -- seq )
  example "\n" split [ unclip [ dec> ] dip 2array ] map ;

{ 25 } [ preprocessed day12-silver ] unit-test
{ 286 } [ preprocessed day12-gold ] unit-test

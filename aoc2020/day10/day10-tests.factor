! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2020.day10 ;
IN: aoc2020.day10.tests

CONSTANT: example { 16 10 15 5 1 11 7 19 6 12 4 }

{ 35 } [ example day10-silver ] unit-test
{ 8 } [ example day10-gold ] unit-test

! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2020.day9 ;
IN: aoc2020.day9.tests

CONSTANT: example { 35 20 15 25 47 40 62 55 65 95 102 117 150 182 127 219 299 277 309 576 }

{ 127 } [ example 5 day9-silver ] unit-test
{ 62 } [ example 5 day9-gold-naive ] unit-test
{ 62 } [ example 5 day9-gold ] unit-test
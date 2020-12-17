! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2020.day17 ;
IN: aoc2020.day17.tests

CONSTANT: example { { 0 1 0 } { 0 0 1 } { 1 1 1 } }

{ 112 } [ example day17-silver ] unit-test
{ 848 } [ example day17-gold ] unit-test

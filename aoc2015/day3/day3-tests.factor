! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2015.day3 ;
IN: aoc2015.day3.tests

{ 2 } [ ">" day3-silver ] unit-test
{ 4 } [ "^>v<" day3-silver ] unit-test
{ 2 } [ "^v^v^v^v^v" day3-silver ] unit-test

{ 3 } [ "^v" day3-gold ] unit-test
{ 3 } [ "^>v<" day3-gold ] unit-test
{ 11 } [ "^v^v^v^v^v" day3-gold ] unit-test
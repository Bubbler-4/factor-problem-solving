! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2015.day1 ;
IN: aoc2015.day1.tests

{ 0 } [ "(())" day1-silver ] unit-test
{ 0 } [ "()()" day1-silver ] unit-test
{ 3 } [ "(((" day1-silver ] unit-test
{ 3 } [ "(()(()(" day1-silver ] unit-test
{ 3 } [ "))(((((" day1-silver ] unit-test
{ -1 } [ "())" day1-silver ] unit-test
{ -1 } [ "))(" day1-silver ] unit-test
{ -3 } [ ")))" day1-silver ] unit-test
{ -3 } [ ")())())" day1-silver ] unit-test

{ 1 } [ ")" day1-gold ] unit-test
{ 5 } [ "()())" day1-gold ] unit-test
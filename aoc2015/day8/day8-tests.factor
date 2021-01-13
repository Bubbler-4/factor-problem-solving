! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: aoc2015.day8 multiline sequences splitting tools.test ;
IN: aoc2015.day8.tests

STRING: testcases
""
"abc"
"aaa\"aaa"
"\x27"
;

{ { 2 2 3 5 } } [ testcases "\n" split [ (day8-silver) ] map ] unit-test
{ { 2 2 3 5 } } [ testcases "\n" split [ (day8-silver)' ] map ] unit-test

{ { 4 4 6 5 } } [ testcases "\n" split [ (day8-gold) ] map ] unit-test
{ { 4 4 6 5 } } [ testcases "\n" split [ (day8-gold)' ] map ] unit-test
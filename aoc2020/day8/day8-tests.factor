! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: aoc2020.day8 arrays math.parser multiline sequences
splitting tools.test ;
IN: aoc2020.day8.tests

STRING: example
nop +0
acc +1
jmp +4
acc +3
jmp -3
acc -99
acc +1
jmp -4
acc +6
;

: preprocessed ( -- str ) example "\n" split [ " " split first2 dec> 2array ] map ;

{ 5 } [ preprocessed day8-silver ] unit-test
{ 8 } [ preprocessed day8-gold ] unit-test

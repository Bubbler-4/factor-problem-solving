! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2020.day14 ;
IN: aoc2020.day14.tests

STRING: example1
mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X
mem[8] = 11
mem[7] = 101
mem[8] = 0
;
{ 165 } [ example1 "\n" split day14-silver ] unit-test

STRING: example2
mask = 000000000000000000000000000000X1001X
mem[42] = 100
mask = 00000000000000000000000000000000X0XX
mem[26] = 1
;
{ 208 } [ example2 "\n" split day14-gold ] unit-test
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: aoc2020.day6 multiline sequences splitting tools.test ;
IN: aoc2020.day6.tests

STRING: example
abc

a
b
c

ab
ac

a
a
a
a

b
;

: example-input ( -- seq ) example "\n\n" split-subseq [ "\n" split ] map ;

{ 11 } [ example-input day6-silver ] unit-test
{ 6 } [ example-input day6-gold ] unit-test

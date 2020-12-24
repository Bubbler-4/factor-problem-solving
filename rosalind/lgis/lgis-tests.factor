! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.lgis ;
IN: rosalind.lgis.tests

CONSTANT: example { 8 2 1 6 5 7 4 3 9 }
: example-result ( -- seq ) example longest-increasing-subseq ;

{ 4 } [ example-result length ] unit-test
{ t } [ example-result [ < ] monotonic? ] unit-test
{ t } [ example-result [ example index ] map [ < ] monotonic? ] unit-test
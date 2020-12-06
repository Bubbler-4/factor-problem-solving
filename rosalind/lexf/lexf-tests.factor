! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.lexf ;
IN: rosalind.lexf.tests

{ { "AA" "AC" "AG" "AT" "CA" "CC" "CG" "CT" "GA" "GC" "GG" "GT" "TA" "TC" "TG" "TT" } }
[ "ACGT" 2 lexf ] unit-test

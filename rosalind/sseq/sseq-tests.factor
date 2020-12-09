! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: grouping kernel math rosalind.sseq sequences tools.test ;
IN: rosalind.sseq.tests

{ t "GTA" } [ "ACGTACGTGACG" "GTA" sseq [ [ < ] monotonic? ] [ [ 1 - ] map "ACGTACGTGACG" nths ] bi ] unit-test

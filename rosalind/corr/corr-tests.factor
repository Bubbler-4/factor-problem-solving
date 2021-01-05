! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: rosalind.corr sets tools.test ;
IN: rosalind.corr.tests

CONSTANT: input { "TCATC" "TTCAT" "TCATC" "TGAAA" "GAGGA" "TTTCA" "ATCAA" "TTGAT" "TTTCC" }
CONSTANT: output { { "TTCAT" "TTGAT" } { "GAGGA" "GATGA" } { "TTTCC" "TTTCA" } }

{ t } [ input corr output set= ] unit-test
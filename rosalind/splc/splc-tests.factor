! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.splc rosalind.common ;
IN: rosalind.splc.tests

STRING: fasta-example
>Rosalind_10
ATGGTCTACATAGCTGACAAACAGCACGTAGCAATCGGTCGAATCTCGAGAGGCATATGGTCACATGATCGGTCGAGCGTGTTTCAAAGTTTGCGCCTAG
>Rosalind_12
ATCGGTCGAA
>Rosalind_15
ATCGGTCGAGCGTGT
;

{ "MVYIADKQHVASREAYGHMFKVCA" } [ fasta-example fasta>assoc splc ] unit-test

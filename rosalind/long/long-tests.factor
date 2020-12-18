! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs multiline rosalind.common rosalind.long tools.test
;
IN: rosalind.long.tests

STRING: example
>Rosalind_56
ATTAGACCTG
>Rosalind_57
CCTGCCGGAA
>Rosalind_58
AGACCTGCCG
>Rosalind_59
GCCGGAATAC
;

{ "ATTAGACCTGCCGGAATAC" } [ example fasta>assoc values long ] unit-test

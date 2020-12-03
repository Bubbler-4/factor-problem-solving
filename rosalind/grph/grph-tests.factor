! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.grph multiline rosalind.common arrays ;
IN: rosalind.grph.tests

STRING: fasta-example
>Rosalind_0498
AAATAAA
>Rosalind_2391
AAATTTT
>Rosalind_2323
TTTTCCC
>Rosalind_0442
AAATCCC
>Rosalind_5013
GGGTGGG
;

{ { { "Rosalind_0498" "Rosalind_2391" }
    { "Rosalind_0498" "Rosalind_0442" }
    { "Rosalind_2391" "Rosalind_2323" } } }
[ fasta-example fasta>assoc grph >array ] unit-test

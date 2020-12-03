! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: multiline rosalind.cons tools.test ;
IN: rosalind.cons.tests

STRING: fasta-example
>Rosalind_1
ATCCAGCT
>Rosalind_2
GGGCAACT
>Rosalind_3
ATGGATCT
>Rosalind_4
AAGCAACC
>Rosalind_5
TTGGAACT
>Rosalind_6
ATGCCATT
>Rosalind_7
ATGGCACT
;

{
  {
    { 5 1 0 0 5 5 0 0 }
    { 0 0 1 4 2 0 6 1 }
    { 1 1 6 3 0 1 0 0 }
    { 1 5 0 0 0 1 1 6 }
  }
  "ATGCAACT"
} [ fasta-example fasta>assoc cons ] unit-test
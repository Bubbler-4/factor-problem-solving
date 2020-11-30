! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: rosalind.dna

HELP: dna
{ $values
    { "str" "A DNA string" }
    { "counts" "A string representing nucleotide counts" }
}
{ $description "Solves the problem DNA on Rosalind: count how many times each nucleotide A, C, G, and T appears in the input DNA string." } ;

HELP: dna-main
{ $description "Solves the problem DNA on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.dna" "rosalind.dna"
{ $vocab-link "rosalind.dna" }
;

ABOUT: "rosalind.dna"

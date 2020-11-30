! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: rosalind.dna

HELP: dna
{ $values
    { "str" "A DNA string" }
    { "counts" "A string representing how many times each of A, C, G, and T occurs in str" }
}
{ $description "Solves the problem " { $snippet "DNA" } " on Rosalind." } ;

ARTICLE: "rosalind.dna" "rosalind.dna"
{ $vocab-link "rosalind.dna" }
;

ABOUT: "rosalind.dna"

! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.mrna

HELP: mrna
{ $values
    { "protein" "A protein string" }
    { "n" "The number of possible mRNAs, modulo 1000000" }
}
{ $description "Solves the problem MRNA on Rosalind: given a protein string, calculate the number of possible mRNA strands that generates the protein, modulo 1000000." } ;

HELP: mrna-main
{ $description "Solves the problem MRNA on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.mrna" "rosalind.mrna"
{ $vocab-link "rosalind.mrna" }
;

ABOUT: "rosalind.mrna"

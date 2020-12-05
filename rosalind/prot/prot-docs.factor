! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.prot

HELP: prot
{ $values
    { "rna" "An RNA string" }
    { "protein" "A string of amino acids" }
}
{ $description "Solves the problem PROT on Rosalind: translate an RNA string into a protein string (which consists of amino acid alphabets)." } ;

HELP: prot-main
{ $description "Solves the problem PROT on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.prot" "rosalind.prot"
{ $vocab-link "rosalind.prot" }
;

ABOUT: "rosalind.prot"

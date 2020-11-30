! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.rna

HELP: T
{ $values
    { "value" "The character value of T" }
}
{ $description "" } ;

HELP: U
{ $values
    { "value" "The character value of U" }
}
{ $description "" } ;

HELP: rna
{ $values
    { "dna-str" "A DNA string" }
    { "rna-str" "An RNA string" }
}
{ $description "Solves the problem RNA on Rosalind: given a DNA string, transcribe it into an RNA string by replacing T's into U's." } ;

HELP: rna-main
{ $description "Solves the problem RNA on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.rna" "rosalind.rna"
{ $vocab-link "rosalind.rna" }
;

ABOUT: "rosalind.rna"

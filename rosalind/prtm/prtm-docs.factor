! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.prtm

HELP: mass-table
{ $values
    { "value" "An assoc between amino acids and their respective weights" }
}
{ $description "The mass table of amino acids, which maps a character to a floating-point value." } ;

HELP: prtm
{ $values
    { "protein" "A protein string" }
    { "mass" "The total weight" }
}
{ $description "Solves the problem PRTM on Rosalind: the weight of the given protein, ignoring the weight of a water molecule." } ;

HELP: prtm-main
{ $description "Solves the problem PRTM on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.prtm" "rosalind.prtm"
{ $vocab-link "rosalind.prtm" }
;

ABOUT: "rosalind.prtm"

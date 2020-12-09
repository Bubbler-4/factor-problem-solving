! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.pper

HELP: pper
{ $values
    { "n" "An integer" } { "k" "An integer" }
    { "ans" "An integer" }
}
{ $description "Solves the problem PPER on Rosalind: compute the number of length-k permutations out of n distinct items, modulo 1000000." } ;

HELP: pper-main
{ $description "Solves the problem PPER on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.pper" "rosalind.pper"
{ $vocab-link "rosalind.pper" }
;

ABOUT: "rosalind.pper"

! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math ;
IN: rosalind.sset

HELP: sset
{ $values
    { "n" integer }
    { "m" integer }
}
{ $description "Solves the problem SSET on Rosalind: given the number of items in a set, calculate the number of its subsets modulo 1000000." } ;

HELP: sset-main
{ $description "Solves the problem SSET on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.sset" "rosalind.sset"
{ $vocab-link "rosalind.sset" }
;

ABOUT: "rosalind.sset"

! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math ;
IN: rosalind.aspc

HELP: aspc
{ $values
    { "n" integer } { "m" integer }
    { "ans" integer }
}
{ $description "Solves the problem ASPC on Rosalind: Given a set with size n, compute how many subsets are of size m or higher, modulo 1000000." } ;

HELP: aspc-main
{ $description "Solves the problem ASPC on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.aspc" "rosalind.aspc"
{ $vocab-link "rosalind.aspc" }
;

ABOUT: "rosalind.aspc"

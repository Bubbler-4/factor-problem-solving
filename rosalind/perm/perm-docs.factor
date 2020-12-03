! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.perm

HELP: perm
{ $values
    { "n" "An integer" }
    { "perms" "A sequence containing all permutations of length n" } { "length" "The number of permutations of length n" }
}
{ $description "Solves the problem PERM on Rosalind: given an integer n, output the permutations of length n and the total number." } ;

HELP: perm-main
{ $description "Solves the problem PERM on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.perm" "rosalind.perm"
{ $vocab-link "rosalind.perm" }
;

ABOUT: "rosalind.perm"

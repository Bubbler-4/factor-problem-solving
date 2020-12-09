! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences ;
IN: rosalind.sign

HELP: sign
{ $values
    { "n" "An integer" }
    { "seq" "A sequence" } { "len" "An integer" }
}
{ $description "Solves the problem SIGN on Rosalind: output all signed permutations, along with the count of them. A signed permutation is defined as a permutation of 1 to n, where each number can have positive or negative sign attached." } ;

HELP: sign-main
{ $description "Solves the problem SIGN on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.sign" "rosalind.sign"
{ $vocab-link "rosalind.sign" }
;

ABOUT: "rosalind.sign"

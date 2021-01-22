! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: rosalind.cat

HELP: (noncrossing-matches)
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Handles the recursive case of " { $snippet "noncrossing-matches" } ". Extracts the first item of the sequence, splits the rest at the opposite base, and calculates the sum of products of non-crossing matches of each half." } ;

HELP: cat
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves the problem CAT on Rosalind: Given an RNA string, count non-crossing perfect matchings of base pairs modulo 1000000." } ;

HELP: cat-main
{ $description "Solves the problem CAT on Rosalind, using a real dataset." } ;

HELP: noncrossing-matches
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "The main memoized routine for counting the non-crossing perfect matchings. The expected elements are one of 1, i, -1, or -i, so that each base pair sums to 0." } ;

HELP: unbalanced?
{ $values
    { "seq" sequence }
    { "?" boolean }
}
{ $description "Tests if the given string is unbalanced, which means that the number of perfect matchings (and therefore the number of non-crossing perfect matchings) is zero." } ;

ARTICLE: "rosalind.cat" "rosalind.cat"
{ $vocab-link "rosalind.cat" }
;

ABOUT: "rosalind.cat"

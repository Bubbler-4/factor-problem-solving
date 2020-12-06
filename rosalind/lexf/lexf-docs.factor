! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.lexf

HELP: lexf
{ $values
    { "alphabet" "A string" } { "length" "An integer" }
    { "strings" "A sequence of strings" }
}
{ $description "Solves the problem LEXF on Rosalind: generate all permutations of given length that can be formed out of the given alphabet, in lexicographic order." } ;

HELP: lexf-main
{ $description "Solves the problem LEXF on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.lexf" "rosalind.lexf"
{ $vocab-link "rosalind.lexf" }
;

ABOUT: "rosalind.lexf"

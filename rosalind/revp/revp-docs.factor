! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.revp

HELP: reverse-palindrome?
{ $values
    { "dna" "A DNA string" }
    { "?" boolean }
}
{ $description "Tests if a given DNA string is a reverse palindrome." } ;

HELP: revp
{ $values
    { "dna" "A DNA string" }
    { "pairs" "Reverse palindrome locations as (index, length) pairs" }
}
{ $description "Solves the problem REVP on Rosalind: find all reverse palindrome substrings of lengths 4 to 12 in a given DNA." } ;

HELP: revp-main
{ $description "Solves the problem REVP on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.revp" "rosalind.revp"
{ $vocab-link "rosalind.revp" }
;

ABOUT: "rosalind.revp"

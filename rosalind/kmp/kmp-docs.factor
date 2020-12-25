! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences ;
IN: rosalind.kmp

HELP: ((kmp))
{ $values
    { "vec" vector } { "elem" object } { "seq" sequence } { "cur" integer }
}
{ $description "Recursively computes the next item in the failure vector." } ;

HELP: (kmp)
{ $values
    { "vec" vector } { "elem" object } { "seq" sequence }
}
{ $description "Adds an item to the failure vector " { $snippet "vec" } "." } ;

HELP: kmp
{ $values
    { "seq" sequence }
    { "seq'" sequence }
}
{ $description "Solves the problem KMP on Rosalind: given a DNA string, compute the \"failure array\", where each element n at index i is the largest number that satisfies " { $snippet "seq[:n] = seq[i-n+1:i+1]" } "." } ;

HELP: kmp-main
{ $description "Solves the problem KMP on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.kmp" "rosalind.kmp"
{ $vocab-link "rosalind.kmp" }
;

ABOUT: "rosalind.kmp"

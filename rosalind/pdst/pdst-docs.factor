! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences ;
IN: rosalind.pdst

HELP: diff%
{ $values
    { "seq1" sequence } { "seq2" sequence }
    { "%" float }
}
{ $description "Computes the p-distance (ratio of different positions) of the two equal-length sequences." } ;

HELP: pdst
{ $values
    { "seq" sequence }
    { "matrix" object }
}
{ $description "Solves the problem PDST on Rosalind: create a distance matrix of given DNA sequences." } ;

HELP: pdst-main
{ $description "Solves the problem PDST on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.pdst" "rosalind.pdst"
{ $vocab-link "rosalind.pdst" }
;

ABOUT: "rosalind.pdst"

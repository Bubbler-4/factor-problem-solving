! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences vectors ;
IN: rosalind.lgis

HELP: (longest-increasing-subseq)
{ $values
    { "vec" vector } { "n" integer }
}
{ $description "Implementation of the inner loop of the longest increasing subsequence algorithm." } ;

HELP: lgis
{ $values
    { "seq" sequence }
    { "seq+" sequence } { "seq-" sequence }
}
{ $description "Solves the problem LGIS on Rosalind: find the longest increasing subsequence and longest decresing subsequence of the given permutation." } ;

HELP: lgis-main
{ $description "Solves the problem LGIS on Rosalind, using a real dataset." } ;

HELP: longest-increasing-subseq
{ $values
    { "seq" sequence }
    { "seq'" sequence }
}
{ $description "Implementation of the longest increasing subsequence algorithm." } ;

ARTICLE: "rosalind.lgis" "rosalind.lgis"
{ $vocab-link "rosalind.lgis" }
;

ABOUT: "rosalind.lgis"

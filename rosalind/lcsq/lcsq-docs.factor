! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences ;
IN: rosalind.lcsq

HELP: (lcsq)
{ $values
    { "subseqs" sequence } { "elem" object } { "seq2" sequence }
    { "subseqs'" sequence }
}
{ $description "Runs the inner loop of the longest common subsequence algorithm." } ;

HELP: lcsq
{ $values
    { "seq1" sequence } { "seq2" sequence }
    { "seq" sequence }
}
{ $description "Solves the problem LCSQ on Rosalind: Given two sequences, compute the longest common subsequence. Uses the O(mn) DP algorithm, where m and n are the lengths of two input sequences." } ;

HELP: lcsq-main
{ $description "Solves the problem LCSQ on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.lcsq" "rosalind.lcsq"
{ $vocab-link "rosalind.lcsq" }
;

ABOUT: "rosalind.lcsq"

! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences ;
IN: rosalind.edit

HELP: (edit)
{ $values
    { "dists" sequence } { "elem" object } { "seq2" sequence }
    { "dists'" sequence }
}
{ $description "Runs the inner loop of the edit distance algorithm. Code structure is the same as LCSQ, longest common subsequence problem." } ;

HELP: edit
{ $values
    { "seq1" sequence } { "seq2" sequence }
    { "n" integer }
}
{ $description "Solves the problem EDIT on Rosalind: Given two strings, find the edit distance. Uses the O(mn) DP algorithm, where m and n are the lengths of two input sequences. Code structure is the same as LCSQ, longest common subsequence problem." } ;

HELP: edit-main
{ $description "Solves the problem EDIT on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.edit" "rosalind.edit"
{ $vocab-link "rosalind.edit" }
;

ABOUT: "rosalind.edit"

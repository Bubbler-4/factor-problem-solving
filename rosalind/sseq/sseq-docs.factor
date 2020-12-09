! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: rosalind.sseq

HELP: sseq
{ $values
    { "str" string } { "subseq" string }
    { "indices" "A sequence of indices in str" }
}
{ $description "Solves the problem SSEQ on Rosalind: given a DNA string s and a motif t, find any collection of indices in s such that the symbols of t appear as a subsequence of s." { $nl "" }
"Since it is allowed to return any subsequence, the code finds the earliest collection of indices." } ;

HELP: sseq-main
{ $description "Solves the problem SSEQ on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.sseq" "rosalind.sseq"
{ $vocab-link "rosalind.sseq" }
;

ABOUT: "rosalind.sseq"

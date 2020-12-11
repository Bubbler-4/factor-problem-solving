! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: rosalind.lexv

HELP: lexv
{ $values
    { "str" string } { "n" "An integer" }
    { "seqs" "A sequence of strings" }
}
{ $description "Solves the problem LEXV on Rosalind: given a string of uppercase letters and an integer n, output all strings of length at least 1 and at most n ordered lexicographically. The sort order of each letter is determined by the appearance order in the input string." } ;

HELP: lexv-main
{ $description "Solves the problem LEXV on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.lexv" "rosalind.lexv"
{ $vocab-link "rosalind.lexv" }
;

ABOUT: "rosalind.lexv"

! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences strings ;
IN: rosalind.long

HELP: find-most-overlapping-pair
{ $values
    { "strs" sequence }
    { "strs'" sequence }
}
{ $description "Given a set of strings, greedily select two strings that form the most overlap, and return a 3-item sequence containing the two strings and their join." } ;

HELP: long
{ $values
    { "strs" sequence }
    { "str" string }
}
{ $description "Solves the problem LONG on Rosalind: given a collection of DNA segments and the information that gluing together pairs of reads that overlap by more than half their length gives a unique string, find the unique string." } ;

HELP: long-main
{ $description "Solves the problem LONG on Rosalind, using a real dataset." } ;

HELP: overlap
{ $values
    { "str1" string } { "str2" string }
    { "str" string }
}
{ $description "Overlaps two strings to form the shortest superstring, which contains str1 as its head and str2 as its tail." } ;

ARTICLE: "rosalind.long" "rosalind.long"
{ $vocab-link "rosalind.long" }
;

ABOUT: "rosalind.long"

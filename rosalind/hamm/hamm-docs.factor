! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: rosalind.hamm

HELP: hamm
{ $values
    { "string1" "A DNA string" } { "string2" "A DNA string of same length" }
    { "count" "Count of point mutations" }
}
{ $description "Solves the problem HAMM on Rosalind: compute the Hamming distance of two DNA strings." } ;

HELP: hamm-main
{ $description "Solves the problem HAMM on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.hamm" "rosalind.hamm"
{ $vocab-link "rosalind.hamm" }
;

ABOUT: "rosalind.hamm"

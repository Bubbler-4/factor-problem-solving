! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math strings ;
IN: rosalind.mmch

HELP: mmch
{ $values
    { "str" string }
    { "ans" integer }
}
{ $description "Solves the problem MMCH on Rosalind: Given an RNA string where A and U (resp. G and C) may appear in different counts, count the number of possible maximum matchings of A-U and G-C." } ;

HELP: mmch-main
{ $description "Solves the problem MMCH on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.mmch" "rosalind.mmch"
{ $vocab-link "rosalind.mmch" }
;

ABOUT: "rosalind.mmch"

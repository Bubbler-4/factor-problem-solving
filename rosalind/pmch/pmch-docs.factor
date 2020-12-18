! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math strings ;
IN: rosalind.pmch

HELP: pmch
{ $values
    { "str" string }
    { "counts" integer }
}
{ $description "Solves the problem PMCH on Rosalind: count the number of distinct perfect matchings on the basepair graph of the given RNA." } ;

HELP: pmch-main
{ $description "Solves the problem PMCH on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.pmch" "rosalind.pmch"
{ $vocab-link "rosalind.pmch" }
;

ABOUT: "rosalind.pmch"

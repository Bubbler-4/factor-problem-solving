! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel sequences strings ;
IN: rosalind.spec

HELP: inv-mass-table
{ $values
    { "assoc" assoc }
}
{ $description "Returns an inverted mapping between the amino acid code and its mass. The mass is scaled 20x and rounded to integer in order to disambiguate between K and Q. I and L have totally identical mass, so L is used." } ;

HELP: spec
{ $values
    { "seq" sequence }
    { "ans" string }
}
{ $description "Solves the problem SPEC on Rosalind: Given a prefix spectrum (a collection of prefix weights) of length L, find a matching protein string of length L-1." } ;

HELP: spec-main
{ $description "Solves the problem SPEC on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.spec" "rosalind.spec"
{ $vocab-link "rosalind.spec" }
;

ABOUT: "rosalind.spec"

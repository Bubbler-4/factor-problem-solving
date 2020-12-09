! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences strings ;
IN: rosalind.tran

HELP: tran
{ $values
    { "str1" string } { "str2" string }
    { "ratio" null }
}
{ $description "Solves the problem TRAN on Rosalind: given two DNA strings of equal length, evaluate the ratio between transitions (A-G, C-T point mutations) and transversions (other kinds of point mutations)." } ;

HELP: tran-main
{ $description "Solves the problem TRAN on Rosalind, using a real dataset." } ;

HELP: trans-type
{ $values
    { "seq" sequence }
    { "type/f" null }
}
{ $description "Given a sequence of two DNA symbols, classifies the mutation as a transition (1), transversion (2), or neither (f)." } ;

ARTICLE: "rosalind.tran" "rosalind.tran"
{ $vocab-link "rosalind.tran" }
;

ABOUT: "rosalind.tran"

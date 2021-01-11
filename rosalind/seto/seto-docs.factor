! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: rosalind.seto

HELP: 2set-ops
{ $values
    { "set1" sequence } { "set2" sequence }
    { "sets" sequence }
}
{ $description "Computes set union, set intersection, and forward and backward set differences of the given two sets." } ;

HELP: parse-set
{ $values
    { "str" string }
    { "seq" sequence }
}
{ $description "Parses a string as a sequence of integers." } ;

HELP: print-set
{ $values
    { "seq" sequence }
}
{ $description "Prints a sequence in the form of a set." } ;

HELP: set-complements
{ $values
    { "n" integer } { "set1" sequence } { "set2" sequence }
    { "sets" sequence }
}
{ $description "Computes set complements of two sets, where the universe is defined as the integers from 1 to n inclusive." } ;

HELP: seto
{ $values
    { "n" integer } { "set1" sequence } { "set2" sequence }
    { "sets" sequence }
}
{ $description "Solves the problem SETO on Rosalind: Perform six set operations on the given two sets and the universe." } ;

HELP: seto-main
{ $description "Solves the problem SETO on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.seto" "rosalind.seto"
{ $vocab-link "rosalind.seto" }
;

ABOUT: "rosalind.seto"

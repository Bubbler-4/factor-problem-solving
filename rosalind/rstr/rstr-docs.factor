! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math strings ;
IN: rosalind.rstr

HELP: 1-n
{ $values
    { "n" number }
    { "1-n" number }
}
{ $description "Evaluates the complement of the given probability." } ;

HELP: rstr
{ $values
    { "trials" integer } { "gc-content" real } { "str" string }
    { "prob" real }
}
{ $description "Solves the problem RSTR on Rosalind: Compute the probability that, if " { $snippet "trials" } " random DNA strings are constructed with the given GC content, the exact DNA string given appears at least once." } ;

HELP: rstr-main
{ $description "Solves the problem RSTR on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.rstr" "rosalind.rstr"
{ $vocab-link "rosalind.rstr" }
;

ABOUT: "rosalind.rstr"

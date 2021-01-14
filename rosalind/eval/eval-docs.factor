! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: rosalind.eval

HELP: (eval)
{ $values
    { "n" integer } { "str" string } { "gc-content" real }
    { "prob" real }
}
{ $description "Solves the problem EVAL for a single GC content value. Uses \"linearity of expectation\", which says that E(x+y) = E(x) + E(y) for any random variables x and y, even if they are dependent." } ;

HELP: eval
{ $values
    { "n" integer } { "str" string } { "gc-contents" sequence }
    { "seq" sequence }
}
{ $description "Solves the problem EVAL on Rosalind: Given a DNA string, evaluate the expected number of that string in a length-n random DNA string with the given GC contents." } ;

HELP: eval-main
{ $description "Solves the problem EVAL on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.eval" "rosalind.eval"
{ $vocab-link "rosalind.eval" }
;

ABOUT: "rosalind.eval"

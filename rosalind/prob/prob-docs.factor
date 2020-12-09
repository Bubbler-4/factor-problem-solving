! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: rosalind.prob

HELP: prob
{ $values
    { "str" "A DNA string" } { "gc-probs" "A sequence of floats" }
    { "logprobs" "A sequence of floats" }
}
{ $description "Solves the problem PROB on Rosalind: for each of the GC-content, evaluate the log-likelihood of a random DNA of given length being exactly equal to the given DNA string." } ;

HELP: prob-main
{ $description "Solves the problem PROB on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.prob" "rosalind.prob"
{ $vocab-link "rosalind.prob" }
;

ABOUT: "rosalind.prob"

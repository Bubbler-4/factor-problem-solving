! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.fib

HELP: fib
{ $values
    { "n" "The number representing nth month" } { "k" "Reproduction factor" }
    { "ans" "The number of rabbit pairs in the nth month" }
}
{ $description "Solves the problem FIB on Rosalind: suppose a mature rabbit pair produces k rabbit pairs every month. If we start with a pair of immature rabbits in the first month, calculate the number of rabbit pairs in the nth month." } ;

HELP: fib-main
{ $description "Solves the problem FIB on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.fib" "rosalind.fib"
{ $vocab-link "rosalind.fib" }
;

ABOUT: "rosalind.fib"

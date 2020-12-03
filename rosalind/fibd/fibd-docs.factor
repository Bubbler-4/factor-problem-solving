! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.fibd

HELP: fibd
{ $values
    { "n" "An integer, the number of months passed in total" } { "m" "An integer, a rabbit's lifespan" }
    { "ans" "An integer, the number of rabbit pairs in the nth month" }
}
{ $description "Solves the problem FIBD on Rosalind: suppose a pair of immature rabbits appear in the first month, and mature rabbit pairs reproduce every month until they die. Given that a rabbit's lifespan is m months, calculate the number of rabbit pairs in the nth month." { $nl "" }
"The solution uses an array of length m to keep track of rabbits at each age. In each iteration, the sum of mature rabbits is prepended (new generation), and the last number is discarded (dying generation)." } ;

HELP: fibd-main
{ $description "Solves the problem FIBD on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.fibd" "rosalind.fibd"
{ $vocab-link "rosalind.fibd" }
;

ABOUT: "rosalind.fibd"

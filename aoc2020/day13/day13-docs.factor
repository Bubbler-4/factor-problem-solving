! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences ;
IN: aoc2020.day13

HELP: day13-gold
{ $values
    { "seq" sequence }
    { "ans" "An integer" }
}
{ $description "Solves Day 13, Part 2 of AoC2020: given a sequence of integers or f, find the smallest positive integer n where n is divisible by the 0-th number, n+1 is divisible by the 1st, and so on. An f-item gives no restriction." { $nl "" }
"This problem is a standard instance of Chinese remainder theorem. Though the problem statement does not explicitly state it, all the given numbers are distinct primes, which are automatically pairwise coprime and therefore form a valid CRT instance." } ;

HELP: day13-gold-preprocess
{ $values
    { "lines" "A sequence of strings" }
    { "seq" sequence }
}
{ $description "Pre-processes the input for Part 2 (discards the first line and keeps x's as f)." } ;

HELP: day13-main
{ $description "Solves both parts of Day 13 of AoC2020, using a real dataset." } ;

HELP: day13-silver
{ $values
    { "n" "An integer" } { "seq" sequence }
    { "ans" "An integer" }
}
{ $description "Solves Day 13, Part 1 of AoC2020: given an integer " { $snippet "n" } " and a collection of integers " { $snippet "seq" } ", find the smallest number " { $snippet "m > n" } " that is a multiple of some number " { $snippet "k" } " in " { $snippet "seq" } ". Output the value of " { $snippet "(n-m)*k" } "." } ;

HELP: day13-silver-preprocess
{ $values
    { "lines" "A sequence of strings" }
    { "n" "An integer" } { "seq" sequence }
}
{ $description "Pre-processes the input for Part 1 (keeps both lines, but discards x's)." } ;

ARTICLE: "aoc2020.day13" "aoc2020.day13"
{ $vocab-link "aoc2020.day13" }
;

ABOUT: "aoc2020.day13"

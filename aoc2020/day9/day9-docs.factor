! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: aoc2020.day9

HELP: day9-gold
{ $values
    { "data" "A sequence of integers" } { "pre" "Length of preamble" }
    { "ans" "The answer" }
}
{ $description "Solves Day 9, Part 2 of AoC2020: find the contiguous subsequence of multiple numbers in the list that sum to the part 1 answer, and return the sum of the minimum and maximum values in the subsequence." } ;

HELP: day9-gold-naive
{ $values
    { "data" "A sequence of integers" } { "pre" "Length of preamble" }
    { "ans" "The answer" }
}
{ $description "Solves Day 9, Part 2 of AoC2020 using a naive algorithm." } ;

HELP: day9-main
{ $description "Solves both parts of Day 9 of AoC2020, using a real dataset." } ;

HELP: day9-silver
{ $values
    { "data" "A sequence of integers" } { "pre" "Length of preamble" }
    { "ans" "The answer" }
}
{ $description "Solves Day 9, Part 1 of AoC2020: each number after the preamble (of size x) must be a sum of two distinct numbers out of x previous ones. Find the first number that violates this rule." } ;

ARTICLE: "aoc2020.day9" "aoc2020.day9"
{ $vocab-link "aoc2020.day9" }
;

ABOUT: "aoc2020.day9"

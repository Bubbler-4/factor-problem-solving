! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences ;
IN: aoc2020.day1

HELP: day1-silver
{ $values
    { "seq" "A sequence of integers" }
    { "prod" "The answer" }
}
{ $description "Solves Day 1, Part 1 of AoC2020: given a sequence of integers, find the two numbers that sum to 2020, and output their product." } ;

HELP: day1-main
{ $description "Solves both parts of Day 1 of AoC2020, using a real dataset." } ;

HELP: day1-gold
{ $values
    { "seq" "A sequence of integers" }
    { "prod" "The answer" }
}
{ $description "Solves Day 1, Part 2 of AoC2020: given a sequence of integers, find the three numbers that sum to 2020, and output their product." { $nl "" }
"Uses naive method of generating a sequence of all 3-combinations and filtering on it, since it is sufficiently fast on a 200-item sequence." } ;

ARTICLE: "aoc2020.day1" "aoc2020.day1"
{ $vocab-link "aoc2020.day1" }
;

ABOUT: "aoc2020.day1"

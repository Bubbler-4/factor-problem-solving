! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math strings ;
IN: aoc2015.day1

HELP: day1-gold
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves Day 1, Part 2 of AoC2015: If the accumulator starts at 0, adds 1 at opening parens, and subtracts 1 at closing parens, find the first index (1-based) where it becomes negative." } ;

HELP: day1-main
{ $description "Solves both parts of Day 1 of AoC2015, using a real dataset." } ;

HELP: day1-silver
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves Day 1, Part 1 of AoC2015: Given a string made of " { $snippet "()" } " characters, add 1 for each of " { $snippet "(" } " and subtract 1 for each of " { $snippet ")" } "." } ;

ARTICLE: "aoc2015.day1" "aoc2015.day1"
{ $vocab-link "aoc2015.day1" }
;

ABOUT: "aoc2015.day1"

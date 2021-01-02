! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: aoc2015.day3

HELP: day3-gold
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves Day 3, Part 2 of AoC2015: If two agents are taking turns to follow the directions string, count the number of coordinates passed at least once by either agent." } ;

HELP: day3-main
{ $description "Solves both parts of Day 3 of AoC2015, using a real dataset." } ;

HELP: day3-silver
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves Day 3, Part 1 of AoC2015: Given the directions string, count the number of coordinates passed at least once." } ;

HELP: path-coords
{ $values
    { "str" string }
    { "seq" sequence }
}
{ $description "Given a directions string, returns the sequence of coordinates the path goes through." } ;

ARTICLE: "aoc2015.day3" "aoc2015.day3"
{ $vocab-link "aoc2015.day3" }
;

ABOUT: "aoc2015.day3"

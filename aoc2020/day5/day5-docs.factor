! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: aoc2020.day5

HELP: day5-gold
{ $values
    { "strings" "A sequence of strings that represent seat positions" }
    { "n" "The seat ID to find" }
}
{ $description "Solves Day 5, Part 2 of AoC2020: given that the seats form a range and they are full except for one, find the ID of that seat." } ;

HELP: day5-main
{ $description "Solves both parts of Day 5 of AoC2020, using a real dataset." } ;

HELP: day5-silver
{ $values
    { "strings" "A sequence of strings that represent seat positions" }
    { "highest" "The highest seat ID" }
}
{ $description "Solves Day 5, Part 1 of AoC2020: given the seat strings, find the highest seat ID." } ;

HELP: seatcode
{ $values
    { "string" "A string representing a seat position" }
    { "value" "The seat ID" }
}
{ $description "Evaluates the seat ID from a seat position." } ;

ARTICLE: "aoc2020.day5" "aoc2020.day5"
{ $vocab-link "aoc2020.day5" }
;

ABOUT: "aoc2020.day5"

! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: aoc2020.day3

HELP: day3-gold
{ $values
    { "lines" "A sequence of strings, representing the grid" }
    { "count" "The answer" }
}
{ $description "Solves Day 3, Part 2 of AoC2020: given a grid which repeats infinitely to the right, start at top left corner, moving in the slope 1, 3, 5, 7, and 1/2, and count the hashes you will step over. Return their product." } ;

HELP: day3-main
{ $description "Solves both parts of Day 3 of AoC2020, using a real dataset." } ;

HELP: day3-silver
{ $values
    { "lines" "A sequence of strings, representing the grid" }
    { "count" "The answer" }
}
{ $description "Solves Day 3, Part 1 of AoC2020: given a grid which repeats infinitely to the right, start at top left corner, moving 3 units east and 1 unit south, and count the hashes you will step over." } ;

HELP: trees-on-slope
{ $values
    { "lines" "A sequence of strings, representing the grid" } { "slope" "The slope of movement east/south" }
    { "count" "Count of hashes stepped over" }
}
{ $description "Given a grid which repeats infinitely to the right, start at the top left corner, moving <east> units east and <south> units south, and count the hashes stepped over." } ;

ARTICLE: "aoc2020.day3" "aoc2020.day3"
{ $vocab-link "aoc2020.day3" }
;

ABOUT: "aoc2020.day3"

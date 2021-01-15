! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel math sequences ;
IN: aoc2015.day9

HELP: all-path-lengths
{ $values
    { "distances" assoc }
    { "path-lengths" sequence }
}
{ $description "Given the distances between pairs of cities, computes the path lengths for all possible paths." } ;

HELP: day9-data
{ $values
    { "data" "an alist" }
}
{ $description "Takes the input data and produces an alist, where the keys are pairs of cities and the values are their distances." } ;

HELP: day9-gold
{ $values
    { "distances" assoc }
    { "n" integer }
}
{ $description "Solves Day 9, Part 2 of AoC2015: Find the length of the longest route going through all the cities." } ;

HELP: day9-main
{ $description "Solves both parts of Day 9 of AoC2015, using a real dataset." } ;

HELP: day9-silver
{ $values
    { "distances" assoc }
    { "n" integer }
}
{ $description "Solves Day 9, Part 1 of AoC2015: Find the length of the shortest route going through all the cities. This is an instance of Traveling Salesperson Problem, but the graph has only seven vertices in the main input, so it can be easily solved by straightforward brute force." } ;

ARTICLE: "aoc2015.day9" "aoc2015.day9"
{ $vocab-link "aoc2015.day9" }
;

ABOUT: "aoc2015.day9"

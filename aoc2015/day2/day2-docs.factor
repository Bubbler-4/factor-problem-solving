! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: aoc2015.day2

HELP: day2-gold
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 2, Part 2 of AoC2015: Given a set of dimensions of boxes, compute the total length of the ribbon required to wrap all of them." } ;

HELP: day2-main
{ $description "Solves both parts of Day 2 of AoC2015, using a real dataset." } ;

HELP: day2-silver
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 2, Part 1 of AoC2015: Given a set of dimensions of boxes, compute the total area of the wrapping paper required to wrap all of them." } ;

HELP: ribbon
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Given the three dimensions of a box, computes the length of the ribbon (smallest perimeter of a face + volume of the box)." } ;

HELP: wrapping-paper
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Given the three dimensions of a box, computes the area of the wrapping paper (total area of all faces + area of the smallest face)." } ;

ARTICLE: "aoc2015.day2" "aoc2015.day2"
{ $vocab-link "aoc2015.day2" }
;

ABOUT: "aoc2015.day2"

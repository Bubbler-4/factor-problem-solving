! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences ;
IN: aoc2015.day10

HELP: day10-data
{ $values
    { "data" sequence }
}
{ $description "Reads the input data as an array of numbers." } ;

HELP: day10-gold
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 10, Part 2 of AoC2015: Given an initial digit string, apply look-and-say 50 times and find the length of the result." } ;

HELP: day10-main
{ $description "Solves both parts of Day 10 of AoC2015, using a real dataset." } ;

HELP: day10-silver
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 10, Part 1 of AoC2015: Given an initial digit string, apply look-and-say 40 times and find the length of the result." } ;

HELP: look-say
{ $values
    { "seq" sequence }
    { "seq'" sequence }
}
{ $description "Apply look-and-say once." } ;

ARTICLE: "aoc2015.day10" "aoc2015.day10"
{ $vocab-link "aoc2015.day10" }
;

ABOUT: "aoc2015.day10"

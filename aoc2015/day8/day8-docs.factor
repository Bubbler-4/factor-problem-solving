! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: aoc2015.day8

HELP: (day8-gold)
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Counts the number of added characters for code representation, in an indirect way." } ;

HELP: (day8-gold)'
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Counts the number of added characters for code representation, using the built-in " { $snippet "unparse" } "." } ;

HELP: (day8-silver)
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Counts the number of reduced characters for interpreting the string literal, in an indirect way." } ;

HELP: (day8-silver)'
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Counts the number of reduced characters for interpreting the string literal, using the built-in " { $snippet "eval" } "." } ;

HELP: day8-data
{ $values
    { "data" sequence }
}
{ $description "Takes input from the data file." } ;

HELP: day8-gold
{ $values
    { "strs" sequence }
    { "n" integer }
}
{ $description "Solves Day 8, Part 2 of AoC2015: Given some strings, count the total difference between the lengths of the input and its code representation." } ;

HELP: day8-main
{ $description "Solves both parts of Day 8 of AoC2015, using a real dataset." } ;

HELP: day8-silver
{ $values
    { "strs" sequence }
    { "n" integer }
}
{ $description "Solves Day 8, Part 1 of AoC2015: Given some string literals, count the total difference between the lengths of the input and the actual string it represents." } ;

ARTICLE: "aoc2015.day8" "aoc2015.day8"
{ $vocab-link "aoc2015.day8" }
;

ABOUT: "aoc2015.day8"

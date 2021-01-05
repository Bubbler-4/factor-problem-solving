! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: aoc2015.day5

HELP: char-repeat-1between?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string has two copies of the same letter with one letter in between (e.g. aba, xyx, zzz). Part of Gold condition." } ;

HELP: day5-gold
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 5, Part 2 of AoC2015: Count how many strings are nice, according to the Gold condition." } ;

HELP: day5-main
{ $description "Solves both parts of Day 5 of AoC2015, using a real dataset." } ;

HELP: day5-silver
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 5, Part 1 of AoC2015: Count how many strings are nice, according to the Silver condition." } ;

HELP: doubled-letter?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string has at least one letter that appears twice in a row. Part of Silver condition." } ;

HELP: nice-gold?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is nice, according to the Gold condition." } ;

HELP: nice-silver?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is nice, according to the Silver condition." } ;

HELP: no-specific-comb?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string does not contain any of ab, cd, pq, or xy. Part of Silver condition." } ;

HELP: pair-twice?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string contains at least two non-overlapping copies of some two-letter combination. Part of Gold condition." } ;

HELP: three-vowels?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string contains at least three vowels. Part of Silver condition." } ;

ARTICLE: "aoc2015.day5" "aoc2015.day5"
{ $vocab-link "aoc2015.day5" }
;

ABOUT: "aoc2015.day5"

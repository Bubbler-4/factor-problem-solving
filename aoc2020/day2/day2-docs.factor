! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: aoc2020.day2

HELP: day2-gold
{ $values
    { "specs" "A sequence of password specs" }
    { "count" "The answer" }
}
{ $description "Solves Day 2, Part 2 of AoC2020: given some password specs, count the ones which are valid under the second rule." } ;

HELP: day2-main
{ $description "Solves both parts of Day 2 of AoC2020, using a real dataset." } ;

HELP: day2-silver
{ $values
    { "specs" "A sequence of password specs" }
    { "count" "The answer" }
}
{ $description "Solves Day 2, Part 1 of AoC2020: given some password specs, count the ones which are valid under the first rule." } ;

HELP: password-valid?
{ $values
    { "spec" "A string in the format of \"1-2 a: abcde\"" }
    { "?" boolean }
}
{ $description "Checks if <passwd> contains the <char> between <min> and <max> times." } ;

HELP: password-valid?'
{ $values
    { "spec" "A string in the format of \"1-2 a: abcde\"" }
    { "?" boolean }
}
{ $description "Checks if exactly one of the positions <min> and <max> in <passwd> equals the <char>." } ;

HELP: spec>
{ $values
    { "spec" "A string in the format of \"1-2 a: abcde\"" }
    { "range" "A 2-item array of integers" } { "char" "A character" } { "passwd" "A string" }
}
{ $description "Takes a string in specific format and returns the three parts of it." } ;

ARTICLE: "aoc2020.day2" "aoc2020.day2"
{ $vocab-link "aoc2020.day2" }
;

ABOUT: "aoc2020.day2"

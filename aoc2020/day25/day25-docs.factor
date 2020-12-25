! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math strings ;
IN: aoc2020.day25

HELP: day25-gold
{ $values
    { "n" object } { "m" object }
    { "str" string }
}
{ $description "There is no programming task for Day 25 Part 2. This word ignores the input and gives a celebration." } ;

HELP: day25-main
{ $description "Solves both parts of Day 25 of AoC2020, using a real dataset." } ;

HELP: day25-silver
{ $values
    { "n" integer } { "m" integer }
    { "ans" integer }
}
{ $description "Solves Day 25, Part 1 of AoC2020: given two numbers, solve " { $snippet "7^i = n mod 20201227, 7^j = m mod 20201227" } " and evaluate " { $snippet "7^(i*j) mod 20201227" } "." } ;

HELP: modlog
{ $values
    { "n" integer }
    { "m" integer }
}
{ $description "Solves " { $snippet "7^m = n mod 20201227" } "." } ;

ARTICLE: "aoc2020.day25" "aoc2020.day25"
{ $vocab-link "aoc2020.day25" }
;

ABOUT: "aoc2020.day25"

! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel math strings ;
IN: aoc2015.day7

HELP: day7-data
{ $values
    { "assoc" assoc }
}
{ $description "Preprocesses the input as an assoc from a variable name to a tokenized expression." } ;

HELP: day7-gold
{ $values
    { "assoc" assoc }
    { "n" integer }
}
{ $description "Solves Day 7, Part 2 of AoC2015: Given a collection of expressions, find the value of " { $snippet "a" } ", feed it back to " { $snippet "b" } ", and find the changed value of " { $snippet "a" } "." } ;

HELP: day7-main
{ $description "Solves both parts of Day 7 of AoC2015, using a real dataset." } ;

HELP: day7-silver
{ $values
    { "assoc" assoc }
    { "n" integer }
}
{ $description "Solves Day 7, Part 1 of AoC2015: Given a collection of expressions, find the value of " { $snippet "a" } "." } ;

HELP: eval-expr
{ $values
    { "cached" assoc } { "assoc" assoc } { "str" string }
    { "n" integer }
}
{ $description "Evaluates the given variable." } ;

HELP: num-or-var
{ $values
    { "cached" assoc } { "assoc" assoc } { "num/var" string }
    { "n" integer }
}
{ $description "Checks if the given string is an integer or a variable. If it is an integer, returns the integer value. Otherwise, recursively calls " { $snippet "eval-expr" } ", caching the result for later use." } ;

ARTICLE: "aoc2015.day7" "aoc2015.day7"
{ $vocab-link "aoc2015.day7" }
;

ABOUT: "aoc2015.day7"

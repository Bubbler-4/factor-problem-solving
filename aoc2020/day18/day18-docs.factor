! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: aoc2020.day18

HELP: day18-gold
{ $values
    { "strs" sequence }
    { "sum" integer }
}
{ $description "Solves Day 18, Part 2 of AoC2020: evaluate each expression under the condition that + has higher precedence than * and both are evaluated left to right, and return their sum." } ;

HELP: day18-main
{ $description "Solves both parts of Day 18 of AoC2020, using a real dataset." } ;

HELP: day18-silver
{ $values
    { "strs" sequence }
    { "sum" integer }
}
{ $description "Solves Day 18, Part 1 of AoC2020: evaluate each expression under the condition that + and * have the same precedence and are evaluated left to right, and return their sum." } ;

HELP: eval-expr
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Evaluates single string for part 1. Uses regex replace to convert the expression into postfix notation, which then can be evaluated natively by Factor." } ;

HELP: eval-expr'
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Evaluates single string for part 2. Uses regex replace to repeatedly reduce an expression into an equivalent form, down to a single integer literal." } ;

HELP: eval-expr2
{ $values
    { "input" string }
    { "ast" integer }
}
{ $description "An EBNF grammar parser for part 1. Uses EBNF actions to evaluate the values of subexpressions on the fly." } ;

HELP: eval-expr2'
{ $values
    { "input" string }
    { "ast" integer }
}
{ $description "An EBNF grammar parser for part 2. Uses EBNF actions to evaluate the values of subexpressions on the fly." } ;

ARTICLE: "aoc2020.day18" "aoc2020.day18"
{ $vocab-link "aoc2020.day18" }
;

ABOUT: "aoc2020.day18"

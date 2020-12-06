! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: aoc2020.day6

HELP: day6-gold
{ $values
    { "answers" "Questionnaire answers grouped by teams" }
    { "sum" "Sum of yes-answers for each team" }
}
{ $description "Solves Day 6, Part 2 of AoC2020: for each team, count all questions answered yes by all members, and find the sum." } ;

HELP: day6-main
{ $description "Solves both parts of Day 6 of AoC2020, using a real dataset." } ;

HELP: day6-silver
{ $values
    { "answers" "Questionnaire answers grouped by teams" }
    { "sum" "Sum of yes-answers for each team" }
}
{ $description "Solves Day 6, Part 1 of AoC2020: for each team, count all questions answered yes by at least one member, and find the sum." } ;

ARTICLE: "aoc2020.day6" "aoc2020.day6"
{ $vocab-link "aoc2020.day6" }
;

ABOUT: "aoc2020.day6"

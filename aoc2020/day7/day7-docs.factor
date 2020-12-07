! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel strings ;
IN: aoc2020.day7

HELP: bag-count
{ $values
    { "str" string } { "assoc" assoc }
    { "n" "An integer" }
}
{ $description "Given a color name and the bag containment description, counts the number of bags it should contain, including itself." } ;

HELP: contains-shiny-gold?
{ $values
    { "str" string } { "assoc" assoc }
    { "?" boolean }
}
{ $description "Given a color name and the bag containment description (without counts), tests if a bag of that color should contain a \"shiny gold\" bag." } ;

HELP: day7-gold
{ $values
    { "assoc" assoc }
    { "n" "An integer" }
}
{ $description "Solves Day 7, Part 2 of AoC2020: given the bag containment description, calculate the number of bags a shiny gold bag should contain." } ;

HELP: day7-main
{ $description "Solves both parts of Day 7 of AoC2020, using a real dataset." } ;

HELP: day7-silver
{ $values
    { "assoc" assoc }
    { "n" "An integer" }
}
{ $description "Solves Day 7, Part 1 of AoC2020: given the bag containment description, count the colors of bags that will contain a shiny gold bag." } ;

HELP: parse-item
{ $values
    { "str" string }
    { "pair" "A 2-item array" }
}
{ $description "Converts a string in the form of " { $snippet "number color..." } " into a 2-item array " { $snippet "{ color number }" } ". The number part is converted to an integer." } ;

HELP: parse-line
{ $values
    { "str" string }
    { "pair" "A 2-item array" }
}
{ $description "Converts a line of bag containment description into a 2-item array." }
{ $examples { $example "USING: aoc2020.day7 prettyprint ;" "\"dark orange bags contain 3 bright white bags, 4 muted yellow bags.\" parse-line ." "{ \"dark orange\" { { \"bright white\" 3 } { \"muted yellow\" 4 } } }" } } ;

ARTICLE: "aoc2020.day7" "aoc2020.day7"
{ $vocab-link "aoc2020.day7" }
;

ABOUT: "aoc2020.day7"

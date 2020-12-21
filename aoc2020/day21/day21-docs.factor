! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs help.markup help.syntax kernel math
sequences strings ;
IN: aoc2020.day21

HELP: containment-indices
{ $values
    { "sets" sequence }
    { "assoc" assoc }
}
{ $description "Converts a collection of sets into an assoc, where the keys are the items appearing at least once in the sets, and the values represent the indices of the sets where the corresponding item appears." } ;

HELP: day21-gold
{ $values
    { "ingredients" assoc } { "allergens" assoc }
    { "str" string }
}
{ $description "Solves Day 21, Part 2 of AoC2020: identify which ingredient corresponds to which allergen, and list the ingredients in the alphabetical order of the allergens." } ;

HELP: day21-main
{ $description "Solves both parts of Day 21 of AoC2020, using a real dataset." } ;

HELP: day21-silver
{ $values
    { "ingredients" assoc } { "allergens" assoc }
    { "n" integer }
}
{ $description "Solves Day 21, Part 1 of AoC2020: identify all ingredients that are surely not an allergen, and count their occurrences across all foods." } ;

HELP: find-all-matches
{ $values
    { "seq" sequence }
    { "assoc" assoc }
}
{ $description "Extracts all matches by extracting each item via " { $snippet "find-one-match" } "." } ;

HELP: find-one-match
{ $values
    { "seq" sequence }
    { "value" string } { "key" string } { "seq'" sequence }
}
{ $description "Identifies a value that appears only once and its corresponding key, and removes the items that have matching key or value." } ;

HELP: identify-matches
{ $values
    { "ingredients" assoc } { "allergens" assoc }
    { "assoc" assoc }
}
{ $description "Gives an assoc where the keys are ingredients and the values represent possibly matching allergens. The matching is defined as the case when the ingredient's food set is a superset of the allergen's food set." } ;

HELP: preprocess-input
{ $values
    { "foods" sequence }
    { "ingredients" assoc } { "allergens" assoc }
}
{ $description "Parses the entire input and converts it into two containment-indices assocs." } ;

HELP: preprocess-line
{ $values
    { "str" string }
    { "pair" array }
}
{ $description "Parses one line of input and converts it into a sequence of ingredients and a sequence of allergens." } ;

ARTICLE: "aoc2020.day21" "aoc2020.day21"
{ $vocab-link "aoc2020.day21" }
;

ABOUT: "aoc2020.day21"

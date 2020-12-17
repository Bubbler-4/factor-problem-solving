! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel math sequences
strings ;
IN: aoc2020.day16

HELP: 2ranges
{ $values
    { "ranges" sequence }
    { "2ranges" sequence }
}
{ $description "Pairs up the ranges, giving the union of each pair." } ;

HELP: all-numbers
{ $values
    { "obj" object }
    { "seq" sequence }
}
{ $description "Finds all numbers in the given string." } ;

HELP: day16-gold
{ $values
    { "ranges" sequence } { "mine" sequence } { "others" sequence }
    { "ans" integer }
}
{ $description "Solves Day 16, Part 2 of AoC2020: using the valid tickets, deduce which column belongs to which category, and identify the six numbers on my ticket which belong to the first six categories." } ;

HELP: day16-main
{ $description "Solves both parts of Day 16 of AoC2020, using a real dataset." } ;

HELP: day16-preprocess
{ $values
    { "str" string }
    { "ranges" sequence } { "mine" sequence } { "others" sequence }
}
{ $description "Preprocesses the given text file into three relevant parts." } ;

HELP: day16-silver
{ $values
    { "ranges" sequence } { "mine" sequence } { "others" sequence }
    { "ans" integer }
}
{ $description "Solves Day 16, Part 1 of AoC2020: identify all numbers in " { $snippet "others" } " that cannot appear in any of the ranges." } ;

HELP: filtered-columns
{ $values
    { "2ranges" sequence } { "mine" sequence } { "others" sequence }
    { "columns" sequence }
}
{ $description "Discard tickets containing numbers that cannot appear in any of the ranges, and transpose the tickets matrix to get columns." } ;

HELP: fitting-ranges
{ $values
    { "2ranges" sequence } { "column" sequence }
    { "indices" sequence }
}
{ $description "Given a ticket column, identify the indices in 2ranges that include all values on the column." } ;

HELP: sort-by-inserted-value
{ $values
    { "assoc" assoc }
    { "keys" sequence }
}
{ $description "Given an assoc whose values are cumulative insertions of integers, sort the keys in the insertion order." } ;

ARTICLE: "aoc2020.day16" "aoc2020.day16"
{ $vocab-link "aoc2020.day16" }
;

ABOUT: "aoc2020.day16"

! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: hashtables help.markup help.syntax kernel strings ;
IN: aoc2020.day14

HELP: bitmask
{ $values
    { "bit" "A character" } { "mask" "A character" }
    { "bit'" "A character" }
}
{ $description "Given the original bit and the mask bit, evaluates the modified bit." } ;

HELP: bitmask'
{ $values
    { "bits" "A string" } { "masks" "A string" }
    { "bits'" "A sequence of strings" }
}
{ $description "Given the original and mask bit patterns, returns the sequence of all bit patterns that match the input." } ;

HELP: day14-gold
{ $values
    { "lines" "A sequence of strings" }
    { "ans" "An integer" }
}
{ $description "Solves Day 14, Part 2 of AoC2020: run a sequence of commands over a virtual memory initialized to all zeros, and output the sum of all values in memory." } ;

HELP: day14-main
{ $description "Solves both parts of Day 14 of AoC2020, using a real dataset." } ;

HELP: day14-silver
{ $values
    { "lines" "A sequence of strings" }
    { "ans" "An integer" }
}
{ $description "Solves Day 14, Part 1 of AoC2020: run a sequence of commands over a virtual memory initialized to all zeros, and output the sum of all values in memory." } ;

HELP: execute-line
{ $values
    { "hash" hashtable } { "mask" string } { "str" string }
    { "mask'" string }
}
{ $description "Runs each command for Part 1. The value is changed according to the mask: X is pass-through, and 0 or 1 overwrites the corresponding bits." } ;

HELP: execute-line'
{ $values
    { "hash" hashtable } { "mask" string } { "str" string }
    { "mask'" string }
}
{ $description "Runs each command for Part 2. The key is changed according to the mask: 0 is pass-through, 1 overwrites the corresponding bit to 1, and X makes it \"floating\" so that all keys that match the non-X pattern are updated with the same value." } ;

ARTICLE: "aoc2020.day14" "aoc2020.day14"
{ $vocab-link "aoc2020.day14" }
;

ABOUT: "aoc2020.day14"

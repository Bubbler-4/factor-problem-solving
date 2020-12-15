! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays hashtables help.markup help.syntax kernel math
sequences ;
IN: aoc2020.day15

HELP: day15-gold
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 15, Part 2 of AoC2020: some initial terms of a sequence are given. It is extended under some rules: if the last term has appeared more than once, the next term is the distance between the last two occurrences of that number; otherwise, the next term is 0. Find the 30 millionth term." { $nl "" }
"This version uses an optimized algorithm using a hashtable, implemented in " { $snippet "next-term'" } "." } ;

HELP: day15-gold2
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 15, Part 2 of AoC2020: some initial terms of a sequence are given. It is extended under some rules: if the last term has appeared more than once, the next term is the distance between the last two occurrences of that number; otherwise, the next term is 0. Find the 30 millionth term." { $nl "" }
"This version uses an optimized algorithm using a fixed-size array in place of a hashtable, implemented in " { $snippet "next-term''" } "."  } ;

HELP: day15-main
{ $description "Solves both parts of Day 15 of AoC2020, using a real dataset." } ;

HELP: day15-silver
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 15, Part 1 of AoC2020: some initial terms of a sequence are given. It is extended under some rules: if the last term has appeared more than once, the next term is the distance between the last two occurrences of that number; otherwise, the next term is 0. Find the 2020th term." { $nl "" }
"This version uses a naive algorithm, implemented in " { $snippet "next-term" } "." } ;

HELP: next-term
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Given the existing terms, evaluate the next term in a straightforward manner." } ;

HELP: next-term'
{ $values
    { "hash" hashtable } { "last" integer } { "i" integer }
    { "n" integer } { "i+1" integer }
}
{ $description "Given the current state, evaluate the next one. The \"last term\" is kept separate from the hashtable, so that it can be used to search for the second-to-last index." } ;

HELP: next-term''
{ $values
    { "array" array } { "last" integer } { "i" integer }
    { "n" integer } { "i+1" integer }
}
{ $description "Given the current state, evaluate the next one. The \"last term\" is kept separate from the array, so that it can be used to search for the second-to-last index. Using an array eliminates the overhead of hashing, speeding up the code 5 to 10 times." } ;

ARTICLE: "aoc2020.day15" "aoc2020.day15"
{ $vocab-link "aoc2020.day15" }
;

ABOUT: "aoc2020.day15"

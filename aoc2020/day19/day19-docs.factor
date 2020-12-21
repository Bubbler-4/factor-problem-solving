! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs hashtables help.markup help.syntax kernel math
sequences strings ;
IN: aoc2020.day19

HELP: day19-gold
{ $values
    { "grammar" assoc } { "lines" sequence }
    { "n" integer }
}
{ $description "Solves Day 19, Part 2 of AoC2020: given a simple recursive EBNF grammar, return the number of strings that match the grammar. Uses regexp construction. Since Factor's regexp does not support recursion, also uses the fact that the rule 0 essentially has some repetition of rule 42 followed by strictly fewer repetition of rule 31. The constructed regex is repeated multiple times with varying repetition count of rule 31 (from 1 to 5). This word takes about an hour to run for the given dataset." } ;

HELP: day19-gold'
{ $values
    { "grammar" assoc } { "lines" sequence }
    { "n" integer }
}
{ $description "Solves Day 19, Part 2 of AoC2020: given a simple recursive EBNF grammar, return the number of strings that match the grammar. Uses an observation that both rule 42 and rule 31 match exactly 128 strings of length 8, and the matched strings are disjoint. This reduces the problem into a problem of dividing a given string into length-8 chunks and checking for the specific pattern (n+m chunks of rule 42 followed by n chunks of rule 31)." } ;

HELP: day19-main
{ $description "Solves both parts of Day 19 of AoC2020, using a real dataset." } ;

HELP: day19-silver
{ $values
    { "grammar" assoc } { "lines" sequence }
    { "n" integer }
}
{ $description "Solves Day 19, Part 1 of AoC2020: given a non-recursive EBNF grammar, return the number of strings that match the grammar. Uses regexp construction." } ;

HELP: preprocess-ebnf
{ $values
    { "str" string }
    { "key" integer } { "value" "A string or sequence" }
}
{ $description "Preprocesses the given line of grammar for regexp generation. If the RHS includes a double quote, " { $snippet "value" } " is a string; otherwise it is an array representing possible derivations." } ;

HELP: preprocess-ebnf'
{ $values
    { "str" string }
    { "key" integer } { "value" "A hashset or sequence" }
}
{ $description "Preprocesses the given line of grammar for string candidate generation. If the RHS includes a double quote, " { $snippet "value" } " is a hashset containing the single string; otherwise it is an array representing possible derivations." } ;

HELP: process-ebnf
{ $values
    { "hash-before" hashtable } { "hash-after" hashtable }
    { "hash-before'" hashtable } { "hash-after'" hashtable }
}
{ $description "One iteration of processing the EBNF for regexp generation. Substitutes the derivations in " { $snippet "hash-before" } " with the regexps found in " { $snippet "hash-after" } " whenever possible, and moves the completed ones." } ;

HELP: process-ebnf'
{ $values
    { "hash-before" hashtable } { "hash-after" hashtable }
    { "hash-before'" hashtable } { "hash-after'" hashtable }
}
{ $description "One iteration of processing the EBNF for string candidate generation. Substitutes the derivations in " { $snippet "hash-before" } " with the string candidates found in " { $snippet "hash-after" } " whenever possible, and moves the completed ones." } ;

ARTICLE: "aoc2020.day19" "aoc2020.day19"
{ $vocab-link "aoc2020.day19" }
;

ABOUT: "aoc2020.day19"

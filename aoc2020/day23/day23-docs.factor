! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays help.markup help.syntax kernel math sequences ;
IN: aoc2020.day23

HELP: 1turn
{ $values
    { "seq" sequence }
    { "seq'" sequence }
}
{ $description "A naive implementation of one crab shuffle." } ;

HELP: 1turn'
{ $values
    { "circ" sequence } { "n" integer }
    { "n'" integer }
}
{ $description "A linked-list-like implementation of one crab shuffle, using the circ. Takes 6 nth calls and 3 set-nth calls (plus some searching over a length-3 vector), so it is fast enough to solve the main challenge." } ;

HELP: circ-array
{ $values
    { "seq" sequence }
    { "seq'" sequence }
}
{ $description "Converts the given sequence into a circ. Assumes that the input itself is a permutation." } ;

HELP: day23-gold
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 23, Part 2 of AoC2020: starting with a given sequence plus 10 to 1000000, run the same crab shuffle 10000000 times, find the two numbers that come right after 1, and return the product." { $nl "" }
"Uses a simulation of a linked list, called \"circ\", which is a permutation array where " { $snippet "v[i] = j" } " indicates that j comes right after i in the cycle." } ;

HELP: day23-main
{ $description "Solves both parts of Day 23 of AoC2020, using a real dataset." } ;

HELP: day23-silver
{ $values
    { "seq" sequence }
    { "seq'" sequence }
}
{ $description "Solves Day 23, Part 1 of AoC2020: starting with a given sequence, perform crab shuffle 100 times, and read out the numbers starting at 1. A crab shuffle is done as follows: given the current number n, remove three numbers after it in the circle. Then let the destination (m) be the highest number in the circle lower than n, and insert the three numbers after m. Move to the next number and repeat." } ;

HELP: take-from
{ $values
    { "circ" sequence } { "n" integer } { "k" integer }
    { "seq" sequence }
}
{ $description "Extract k numbers in the circ that appears after the number n." } ;

ARTICLE: "aoc2020.day23" "aoc2020.day23"
{ $vocab-link "aoc2020.day23" }
;

ABOUT: "aoc2020.day23"

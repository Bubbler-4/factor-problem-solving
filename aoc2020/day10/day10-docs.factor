! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences ;
IN: aoc2020.day10

HELP: day10-gold
{ $values
    { "seq" sequence }
    { "n" "An integer" }
}
{ $description "Solves Day 10, Part 2 of AoC2020: count the number of ways you can connect your device to the ground by using some or all of the adapters given." } ;

HELP: day10-main
{ $description "Solves both parts of Day 10 of AoC2020, using a real dataset." } ;

HELP: day10-silver
{ $values
    { "seq" sequence }
    { "n" "An integer" }
}
{ $description "Solves Day 10, Part 1 of AoC2020: a collection of adapter output joltages are given, and you need to connect from ground (0) to your own device (which has the joltage of maximum given + 3). A device of output joltage x can be connected to input joltage of x-3 to x inclusive. If you use all the given adapters, count the 1-jolt and 3-jolt differences between connections (including ground and your device), and multiply the two values." } ;

HELP: sort+minmax
{ $values
    { "seq" sequence }
    { "seq'" sequence }
}
{ $description "Sorts the sequence and adds a 0 and maximum+3 to the sequence." } ;

ARTICLE: "aoc2020.day10" "aoc2020.day10"
{ $vocab-link "aoc2020.day10" }
;

ABOUT: "aoc2020.day10"

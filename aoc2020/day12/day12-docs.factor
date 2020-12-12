! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: aoc2020.day12

HELP: day12-gold
{ $values
    { "cmds" "A sequence of commands" }
    { "ans" "An integer" }
}
{ $description "Solves Day 12, Part 2 of AoC2020: given the commands, compute the Manhattan distance from the origin to the ship's final position." } ;

HELP: day12-main
{ $description "Solves both parts of Day 12 of AoC2020, using a real dataset." } ;

HELP: day12-silver
{ $values
    { "cmds" "A sequence of commands" }
    { "ans" "An integer" }
}
{ $description "Solves Day 12, Part 1 of AoC2020: given the commands, compute the Manhattan distance from the origin to the ship's final position." } ;

HELP: run-command
{ $values
    { "pos" "A complex number" } { "dir" "A complex number" } { "cmd" "A command" }
    { "pos'" "A complex number" } { "dir'" "A complex number" }
}
{ $description "Runs the given command: N, S, E, W moves the ship in that direction, L and R rotates the ship, and F moves the ship in the direction it is facing." } ;

HELP: run-command'
{ $values
    { "pos" "A complex number" } { "waypoint" "A complex number" } { "cmd" "A command" }
    { "pos'" "A complex number" } { "waypoint'" "A complex number" }
}
{ $description "Runs the given command: N, S, E, W moves the waypoint in that direction, L and R rotates the waypoint around the ship, and F moves the ship towards the waypoint." } ;

ARTICLE: "aoc2020.day12" "aoc2020.day12"
{ $vocab-link "aoc2020.day12" }
;

ABOUT: "aoc2020.day12"

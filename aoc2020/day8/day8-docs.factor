! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: aoc2020.day8

HELP: (run-until-loop)
{ $values
    { "prgm" "An assembly program" } { "acc" "Accumulator" } { "pc" "PC" } { "hist" "History of PC addresses" }
    { "?" boolean }
}
{ $description "Runs the given program one step at a time recursively." } ;

HELP: day8-gold
{ $values
    { "prgm" "An assembly program" }
    { "acc" "Accumulator value" }
}
{ $description "Solves Day 8, Part 2 of AoC2020: given an assembly program, find a nop/jmp instruction which makes the program terminate when switched to jmp/nop, and output the accumulator's value when the fixed program runs to completion." } ;

HELP: day8-main
{ $description "Solves both parts of Day 8 of AoC2020, using a real dataset." } ;

HELP: day8-silver
{ $values
    { "prgm" "An assembly program" }
    { "acc" "Accumulator value" }
}
{ $description "Solves Day 8, Part 1 of AoC2020: given an aseembly program that runs into an infinite loop, output the accumulator's value when the PC hits an instruction twice for the first time." } ;

HELP: run-cmd
{ $values
    { "acc" "Accumulator" } { "pc" "PC" } { "cmd" "A command" }
}
{ $description "Runs the instruction on the given acc and pc." } ;

HELP: run-until-loop
{ $values
    { "prgm" "An assembly program" }
    { "?" boolean } { "acc" "Accumulator" }
}
{ $description "Runs the given program until it terminates or encounters an infinite loop. Returns the accumulator value at that point, along with a boolean which indicates if the program terminated or not." } ;

HELP: swap-nth-instr
{ $values
    { "prgm" "An assembly program" } { "n" "An integer" }
}
{ $description "Changes the nth instruction in the program. If it is nop, it is changed to jmp, and vice versa. Does not modify an acc instruction." } ;

ARTICLE: "aoc2020.day8" "aoc2020.day8"
{ $vocab-link "aoc2020.day8" }
;

ABOUT: "aoc2020.day8"

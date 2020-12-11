! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: aoc2020.day11

HELP: 1iteration
{ $values
    { "seats" "A matrix" }
    { "seats'" "A matrix" }
}
{ $description "Executes one iteration of day11-silver." } ;

HELP: 1iteration'
{ $values
    { "seats" "A matrix" }
    { "seats'" "A matrix" }
}
{ $description "Executes one iteration of day11-gold." } ;

HELP: 3x3-count-1s
{ $values
    { "matrix" "A matrix" }
    { "matrix'" "A matrix" }
}
{ $description "Given a matrix, counts ones in each overlapping 3x3 region. If the original dimensions are (m,n), returns a matrix of the dimension (m-2,n-2)." } ;

HELP: day11-gold
{ $values
    { "matrix" "A matrix of integers" }
    { "matrix'" "A matrix of integers" }
}
{ $description "Solves Day 11, Part 2 of AoC2020: a matrix consisting of -1, 0, or 1 is given. 0 changes to 1 if none of the 8 seats (-1 are non-seats) visible at 8 directions are 1, and 1 changes to 0 if 5 or more visible seats are 1. Iterate until stable, and return the count of ones." } ;

HELP: day11-main
{ $description "Solves both parts of Day 11 of AoC2020, using a real dataset." } ;

HELP: day11-silver
{ $values
    { "matrix" "A matrix of integers" }
    { "matrix'" "A matrix of integers" }
}
{ $description "Solves Day 11, Part 1 of AoC2020: a matrix consisting of -1, 0, or 1 is given. 0 changes to 1 if none of the 8 neighbor cells are 1, and 1 changes to 0 if 4 or more neighbor cells are 1. Iterate until stable, and return the count of ones." } ;

HELP: matrix-pad0
{ $values
    { "matrix" "A matrix" }
    { "matrix'" "A matrix" }
}
{ $description "Given a matrix, pads it with a single layer of zeros on all four sides." } ;

HELP: mnth
{ $values
    { "coord" "A 2-item sequence of integers" } { "matrix" "A matrix" }
    { "item" "An object" }
}
{ $description "Given a pair (m,n) and a matrix, returns the item at m-th row and n-th column." } ;

HELP: next-state
{ $values
    { "occupied" "An integer" } { "seat" "An integer" }
    { "seat'" "An integer" }
}
{ $description "Given the current seat state and the number of surrounding ones, returns the next seat state." } ;

HELP: next-state-matrix
{ $values
    { "occupied" "A matrix" } { "seats" "A matrix" }
    { "seats'" "A matrix" }
}
{ $description "Maps next-state over the entire matrices." } ;

ARTICLE: "aoc2020.day11" "aoc2020.day11"
{ $vocab-link "aoc2020.day11" }
;

ABOUT: "aoc2020.day11"

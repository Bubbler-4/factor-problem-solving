! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays help.markup help.syntax kernel math ;
IN: aoc2020.day17

HELP: day17-gold
{ $values
    { "array" array }
    { "sum" integer }
}
{ $description "Solves Day 17, Part 2 of AoC2020: starting with the given configuration, run Game of Life in 4D space, and count on-cells after 6 iterations." } ;

HELP: day17-main
{ $description "Solves both parts of Day 17 of AoC2020, using a real dataset." } ;

HELP: day17-silver
{ $values
    { "array" array }
    { "sum" integer }
}
{ $description "Solves Day 17, Part 1 of AoC2020: starting with the given configuration, run Game of Life in 3D space, and count on-cells after 6 iterations." } ;

HELP: life3d-1iter
{ $values
    { "array" array }
    { "array'" array }
}
{ $description "Runs one iteration of 3D Game of Life." } ;

HELP: life3d-counts
{ $values
    { "array" array }
    { "array'" array }
}
{ $description "Computes the count of on-neighbors for each cell." } ;

HELP: life3d-next
{ $values
    { "sums" array } { "self" array }
    { "next" array }
}
{ $description "Takes the current configuration and the neighbors to determine the next state." } ;

HELP: life3d-pad1
{ $values
    { "array" array }
    { "array'" array }
}
{ $description "Pads with a layer of zeros in every direction." } ;

HELP: life4d-1iter
{ $values
    { "array" array }
    { "array'" array }
}
{ $description "Runs one iteration of 3D Game of Life." } ;

HELP: life4d-counts
{ $values
    { "array" array }
    { "array'" array }
}
{ $description "Computes the count of on-neighbors for each cell." } ;

HELP: life4d-next
{ $values
    { "sums" array } { "self" array }
    { "next" array }
}
{ $description "Takes the current configuration and the neighbors to determine the next state." } ;

HELP: life4d-pad1
{ $values
    { "array" array }
    { "array'" array }
}
{ $description "Pads with a layer of zeros in every direction." } ;

ARTICLE: "aoc2020.day17" "aoc2020.day17"
{ $vocab-link "aoc2020.day17" }
;

ABOUT: "aoc2020.day17"

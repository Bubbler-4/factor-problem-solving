! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math sequences strings ;
IN: aoc2020.day24

HELP: 5x3-sums
{ $values
    { "mat" sequence }
    { "mat'" sequence }
}
{ $description "Computes the sum of each cell and its 6 neighbors." } ;

HELP: day24-gold
{ $values
    { "coords" sequence }
    { "n" integer }
}
{ $description "Solves Day 24, Part 2 of AoC2020: given the hexagonal coordinates of the tiles to be flipped, run a hexagonal GoL for 100 turns, and count how many tiles end up in the flipped state." } ;

HELP: day24-main
{ $description "Solves both parts of Day 24 of AoC2020, using a real dataset." } ;

HELP: day24-silver
{ $values
    { "coords" sequence }
    { "n" integer }
}
{ $description "Solves Day 24, Part 1 of AoC2020: given the hexagonal coordinates of the tiles to be flipped, count how many tiles end up in the flipped state." } ;

HELP: flip-cells
{ $values
    { "mat1" sequence } { "mat2" sequence }
    { "mat" sequence }
}
{ $description "Computes the next hexagonal GoL state based on the current state (mat1) and the neighbor sums including self (mat2)." } ;

HELP: next-gol-state
{ $values
    { "mat" sequence }
    { "mat'" sequence }
}
{ $description "Computes the next hexagonal GoL state. 0 is converted to 1 if there are exactly 2 surrounding ones; 1 is kept 1 if there are one or two surrounding ones." } ;

HELP: offset-coords
{ $values
    { "coords" sequence }
    { "coords'" sequence }
}
{ $description "Moves the coords so that no coordinates are negative." } ;

HELP: pad-matrix
{ $values
    { "mat" sequence }
    { "mat'" sequence }
}
{ $description "Pads the given matrix with zeros, twice for top and bottom and once for left and right." } ;

HELP: str>coord
{ $values
    { "str" string }
    { "pair" sequence }
}
{ $description "Converts a line of hexagonal offset string into an offset vector." } ;

HELP: str>offset
{ $values
    { "str" string }
    { "pair" sequence }
}
{ $description "Maps a string fragment to one of six hexagonal offset vectors." } ;

HELP: to-01-matrix
{ $values
    { "coords" sequence }
    { "mat" sequence }
}
{ $description "Given some one's coordinates, creates a matrix that contains 1 at the given coords and 0 at the others. Assumes the coords are non-negative." } ;

HELP: valid-coords
{ $values
    { "coords" sequence }
    { "coords'" sequence }
}
{ $description "Extract the coordinates that appear an odd number of times." } ;

ARTICLE: "aoc2020.day24" "aoc2020.day24"
{ $vocab-link "aoc2020.day24" }
;

ABOUT: "aoc2020.day24"

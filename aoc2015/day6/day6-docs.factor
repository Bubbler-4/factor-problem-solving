! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math quotations sequences
strings ;
IN: aoc2015.day6

HELP: change-matrix-range
{ $values
    { "matrix" sequence } { "xrange" sequence } { "yrange" sequence } { "quot" quotation }
}
{ $description "A helper word to abstract modifications on a block region in a matrix." } ;

HELP: day6-data
{ $values
    { "data" sequence }
}
{ $description "Imports the input data, extracting the command (on, off, toggle) and horizontal and vertical ranges for each line." } ;

HELP: day6-gold
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 6, Part 2 of AoC2015: Run the commands over 1000x1000 grid, interpreting on=+1, off=-1 (minimum 0), toggle=+2 respectively. Find the sum of all values in the grid." } ;

HELP: day6-main
{ $description "Solves both parts of Day 6 of AoC2015, using a real dataset." } ;

HELP: day6-silver
{ $values
    { "seq" sequence }
    { "n" integer }
}
{ $description "Solves Day 6, Part 1 of AoC2015: Run the commands over 1000x1000 grid, interpreting on=set to 1, off=set to 0, toggle=alternate between 1 and 0 respectively. Find the sum of all values in the grid." } ;

HELP: extract-mode
{ $values
    { "str" string }
    { "mode" string }
}
{ $description "Extracts the string on/off/toggle from a line of command." } ;

HELP: extract-ranges
{ $values
    { "str" string }
    { "seq" sequence }
}
{ $description "Extracts the x- and y-ranges from a line of command." } ;

HELP: init-matrix
{ $values
    { "matrix" sequence }
}
{ $description "Creates a 1000x1000 matrix, which is an array of byte-arrays." } ;

HELP: run-command-gold
{ $values
    { "matrix" sequence } { "cmd" sequence }
}
{ $description "Run a single command over the given matrix, under the Gold rule. Modifies the matrix in place." } ;

HELP: run-command-silver
{ $values
    { "matrix" sequence } { "cmd" sequence }
}
{ $description "Run a single command over the given matrix, under the Silver rule. Modifies the matrix in place." } ;

ARTICLE: "aoc2015.day6" "aoc2015.day6"
{ $vocab-link "aoc2015.day6" }
;

ABOUT: "aoc2015.day6"

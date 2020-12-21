! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel math sequences
strings ;
IN: aoc2020.day20

HELP: boundaries
{ $values
    { "id" integer } { "matrix" sequence }
    { "seq" sequence } { "assoc" assoc }
}
{ $description "Given a matrix, creates a sequence of four boundaries (canonicalized as either forward or backward, whichever comes first lexicographically) and an assoc that maps each boundary pattern to the id." } ;

HELP: day20-gold
{ $values
    { "tiles" assoc }
    { "n" integer }
}
{ $description "Solves Day 20, Part 2 of AoC2020: assemble the tiles and compute the number of " { $snippet "#" } " characters that are not part of the sea monsters." } ;

HELP: day20-main
{ $description "Solves both parts of Day 20 of AoC2020, using a real dataset." } ;

HELP: day20-silver
{ $values
    { "tiles" assoc }
    { "n" integer }
}
{ $description "Solves Day 20, Part 1 of AoC2020: find the tile IDs which would go to the four corners of the grid, and compute their product. This word solves the problem without actually assembling the grids." } ;

HELP: find-sea-monster
{ $values
    { "matrix" sequence }
    { "n" integer }
}
{ $description "Counts the number of sea monsters in the matrix." } ;

HELP: find-sea-monster-anyway
{ $values
    { "matrix" sequence }
    { "n" integer }
}
{ $description "Finds the orientation of the matrix where the sea monster appears the largest number of times, and counts the number of sea monsters on it." } ;

HELP: form-tile-row
{ $values
    { "tile" sequence } { "tile-id" integer } { "border>ids" assoc } { "tiles" assoc }
    { "seq" sequence }
}
{ $description "Given the leftmost tile on a row of tiles, completes the row of tiles." } ;

HELP: orient-tile-2edge
{ $values
    { "edges" sequence } { "tile" sequence }
    { "tile'" sequence }
}
{ $description "Rotates and reverses the tile until the top and left edges match the given edge patterns when canonicalized." } ;

HELP: orient-tile-left
{ $values
    { "edge" sequence } { "tile" sequence }
    { "tile'" sequence }
}
{ $description "Rotates and reverses the tile until the left edge exactly matches the given pattern." } ;

HELP: right-matching-tile
{ $values
    { "tile" sequence } { "tile-id" integer } { "border>ids" assoc } { "tiles" assoc }
    { "tile'" sequence } { "tile-id'" integer }
}
{ $description "Given a tile, finds the tile that would go on the right side of it, and orients it properly so that the touching edges exactly match." } ;

HELP: sea-monster
{ $values
    { "seq" sequence }
}
{ $description "Array version of the 2D string containing the \"sea monster\" pattern, where the blanks are filled with dots." } ;

HELP: sea-monster-base
{ $values
    { "string" string }
}
{ $description "The 2D string containing the \"sea monster\" pattern." } ;

HELP: top-left-match?
{ $values
    { "edges" sequence } { "tile" sequence }
    { "?" boolean }
}
{ $description "Given a tile and two edge patterns, determines if the tile has the expected top and left patterns. Does not distinguish between the top edge and the left edge." } ;

ARTICLE: "aoc2020.day20" "aoc2020.day20"
{ $vocab-link "aoc2020.day20" }
;

ABOUT: "aoc2020.day20"

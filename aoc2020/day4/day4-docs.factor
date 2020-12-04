! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: aoc2020.day4

HELP: day4-gold
{ $values
    { "assocs" "A sequence of passports given as string-string assocs" }
    { "count" "The count of valid passports" }
}
{ $description "Solves Day 4, Part 2 of AoC2020: given a list of passports, validate values as well as keys, and count the valid ones." } ;

HELP: day4-main
{ $description "Solves both parts of Day 4 of AoC2020, using a real dataset." } ;

HELP: day4-silver
{ $values
    { "assocs" "A sequence of passports given as string-string assocs" }
    { "count" "The count of valid passports" }
}
{ $description "Solves Day 4, Part 2 of AoC2020: given a list of passports, validate their keys, and count the valid ones." } ;

HELP: valid-byr?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is a valid BYR (a decimal integer between 1920 and 2002)." } ;

HELP: valid-ecl?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is a valid ECL (one of amb, blu, brn, gry, grn, hzl, oth)." } ;

HELP: valid-eyr?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is a valid EYR (a decimal integer between 2020 and 2030)." } ;

HELP: valid-hcl?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is a valid HCL (a hash symbol followed by six lowercase hex digits)." } ;

HELP: valid-hgt?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is a valid HGT (between 150cm and 193cm or 59in and 76in)." } ;

HELP: valid-iyr?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is a valid IYR (a decimal integer between 2010 and 2020)." } ;

HELP: valid-pid?
{ $values
    { "str" string }
    { "?" boolean }
}
{ $description "Tests if a string is a valid PID (a string of 9 decimal digits)." } ;

ARTICLE: "aoc2020.day4" "aoc2020.day4"
{ $vocab-link "aoc2020.day4" }
;

ABOUT: "aoc2020.day4"

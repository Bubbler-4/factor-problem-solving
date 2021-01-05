! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: byte-vectors checksums help.markup help.syntax kernel
math strings ;
IN: aoc2015.day4

HELP: 5-leading-zeros?
{ $values
    { "bytes" byte-vector }
    { "?" boolean }
}
{ $description "Checks if the given checksum has five leading zeros in hex." } ;

HELP: 6-leading-zeros?
{ $values
    { "bytes" byte-vector }
    { "?" boolean }
}
{ $description "Checks if the given checksum has six leading zeros in hex." } ;

HELP: append-md5
{ $values
    { "str" string } { "n" integer }
    { "value" object }
}
{ $description "Appends the number to the string and computes its MD5 hash." } ;

HELP: append-md5'
{ $values
    { "checksum-state" checksum-state } { "n" integer }
    { "value" object }
}
{ $description "Takes an MD5 state, pushes " { $snippet "n" } " as a string, and returs the resulting MD5 hash. This is used in solution version 2 to cache the hash state of the input string." } ;

HELP: day4-gold
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves Day 4, Part 2 of AoC2015: Given an initial string, find the first integer that, when attached to the input, produces an MD5 hash that starts with six zeros. Uses a naive algorithm." } ;

HELP: day4-gold2
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves Day 4, Part 2 of AoC2015: Given an initial string, find the first integer that, when attached to the input, produces an MD5 hash that starts with six zeros. Caches the hash state of the input string. Caching every single state after adding each digit seems to make things worse, likely due to excessive object copies and GC triggers." } ;

HELP: day4-main
{ $description "Solves both parts of Day 4 of AoC2015, using a real dataset." } ;

HELP: day4-silver
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves Day 4, Part 1 of AoC2015: Given an initial string, find the first integer that, when attached to the input, produces an MD5 hash that starts with five zeros. Uses a naive algorithm." } ;

HELP: day4-silver2
{ $values
    { "str" string }
    { "n" integer }
}
{ $description "Solves Day 4, Part 1 of AoC2015: Given an initial string, find the first integer that, when attached to the input, produces an MD5 hash that starts with five zeros. Caches the hash state of the input string. Caching every single state after adding each digit seems to make things worse, likely due to excessive object copies and GC triggers." } ;

ARTICLE: "aoc2015.day4" "aoc2015.day4"
{ $vocab-link "aoc2015.day4" }
;

ABOUT: "aoc2015.day4"

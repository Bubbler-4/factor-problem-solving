! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays help.markup help.syntax kernel sequences strings ;
IN: rosalind.lcsm

HELP: dna>enum
{ $values
    { "string" string }
    { "array" array }
}
{ $description "Maps each character of ACGT in the DNA string to 1 2 3 4 respectively, and adds a 0 at the end. This is the internal format used for the suffix trie algorithm." } ;

HELP: enum>dna
{ $values
    { "array" array }
    { "string" string }
}
{ $description "Undoes the operation of " { $snippet "dna>enum" } ": removes any trailing zeroes and maps 1 2 3 4 to ACGT respectively." } ;

HELP: intersect-dnas
{ $values
    { "dnas" "A sequence of DNA strings" }
    { "intersections" "A sequence of DNA strings" }
}
{ $description "Finds all common substrings found on the given set of DNAs." } ;

HELP: lcsm
{ $values
    { "dnas" "A sequence of DNA strings" }
    { "dna" "A DNA string" }
}
{ $description "Solves the problem LCSM on Rosalind: find a longest common substring of the given DNA sequences." } ;

HELP: lcsm-main
{ $description "Solves the problem LCSM on Rosalind, using a real dataset." } ;

HELP: suffix-trie
{ $values
    { "string" "An enum-encoded sequence" }
    { "trie" "A trie" }
}
{ $description "Generates a suffix trie by adding all suffixes of the given string to an empty trie." } ;

HELP: trie-add
{ $values
    { "trie" "A trie" } { "string" "An enum-encoded sequence" }
}
{ $description "Adds the string to the trie as a side effect." } ;

HELP: trie-init
{ $values
    { "trie" "An empty trie" }
}
{ $description "Creates an empty trie." } ;

HELP: trie-intersect-string
{ $values
    { "trie" "A trie" } { "string" "An enum-encoded sequence" }
}
{ $description "Computes all longest common prefixes between the trie and the suffixes of the given string, and adds them to a new empty trie. The result is an intersection in the sense that it represents the intersection of all common substrings between the two objects." } ;

HELP: trie-longest-prefix
{ $values
    { "trie" "A trie" } { "string" "An enum-encoded sequence" }
}
{ $description "Computes the longest prefix of the string that can be found in the trie." } ;

HELP: trie-strings
{ $values
    { "trie" "A trie" }
    { "seq" "A sequence of enum-encoded sequences" }
}
{ $description "Extracts all sequences which start at the root and end at a leaf from a trie." } ;

ARTICLE: "rosalind.lcsm" "rosalind.lcsm"
{ $vocab-link "rosalind.lcsm" }
;

ABOUT: "rosalind.lcsm"

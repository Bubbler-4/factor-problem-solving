! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel sequences strings ;
IN: rosalind.kmer

HELP: kmer
{ $values
    { "str" string }
    { "counts" sequence }
}
{ $description "Solves the problem KMER on Rosalind: count occurrences of each 4-mer in the given DNA string, sorted in the lexicographical order of 4-mers." } ;

HELP: kmer-main
{ $description "Solves the problem KMER on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.kmer" "rosalind.kmer"
{ $vocab-link "rosalind.kmer" }
;

ABOUT: "rosalind.kmer"

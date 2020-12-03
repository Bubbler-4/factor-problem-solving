! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel strings ;
IN: rosalind.cons

HELP: cons
{ $values
    { "assoc" "An assoc of ID string and DNA string" }
    { "histo" "Profile matrix" } { "consensus" "Consensus string" }
}
{ $description "Solves the problem CONS on Rosalind: given a collection of DNA sequences, output the histogram of nucleotides at each position and the consensus string." { $nl "" }
"A profile matrix is a 4×n matrix where each column shows the histogram of A, C, G, T nucleotides at that position in the given DNAs. A consensus string is a string formed by picking the most common symbol for each position."
} ;

HELP: cons-main
{ $description "Solves the problem CONS on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.cons" "rosalind.cons"
{ $vocab-link "rosalind.cons" }
;

ABOUT: "rosalind.cons"

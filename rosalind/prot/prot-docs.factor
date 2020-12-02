! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.prot

HELP: prot
{ $values
    { "rna" "An RNA string" }
    { "protein" "A string of amino acids" }
}
{ $description "Solves the problem PROT on Rosalind: translate an RNA string into a protein string (which consists of amino acid alphabets)." } ;

HELP: prot-main
{ $description "Solves the problem PROT on Rosalind, using a real dataset." } ;

HELP: rna3>amino
{ $values
    { "rna3" "An RNA string of length 3" }
    { "amino" "A character in amino acid alphabet, or a dot" }
}
{ $description "Translates a single codon (a sequence of three RNA nucleotides) into an amino acid. Returns a dot if the input represents a stop codon." } ;

ARTICLE: "rosalind.prot" "rosalind.prot"
{ $vocab-link "rosalind.prot" }
;

ABOUT: "rosalind.prot"

! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax strings ;
IN: rosalind.common

HELP: fasta>assoc
{ $values
    { "str" string }
    { "assoc" assoc }
}
{ $description "Parses a string in FASTA format and returns an assoc of ID - content pairs." } ;

HELP: amino-table
{ $values
    { "value" "A length-64 string of uppercase letters and period" }
}
{ $description "A length-64 string that can be used for translation from RNA to amino acid. Each letter denotes an amino acid, and a period indicates a stop codon. The indexing is done by converting UCAG to 0,1,2,3 respectively and interpreting as base 4, highest digit first." } ;

HELP: protein-mass-table
{ $values
    { "value" assoc }
}
{ $description "A mapping between the character representation of each amino acid and its monoisotopic mass." } ;

HELP: rna3>amino
{ $values
    { "rna3" "An RNA string of length 3" }
    { "amino" "A character in amino acid alphabet, or a dot" }
}
{ $description "Translates a single codon (a sequence of three RNA nucleotides) into an amino acid. Returns a dot if the input represents a stop codon." } ;

HELP: rna>protein
{ $values
    { "rna" "An RNA string starting with AUG" }
    { "protein/f" "A protein string, or f" }
}
{ $description "Translates an RNA string into a protein string, discarding anything that appears after a stop codon. Returns f if the RNA does not start with the start codon AUG, or a stop codon is not found." } ;

HELP: reverse-complement
{ $values
    { "dna" "A DNA string" }
    { "dna'" "A DNA string" }
}
{ $description "Computes the reverse complement of a DNA string, which represents the opposite strand." } ;

ARTICLE: "rosalind.common" "rosalind.common"
{ $vocab-link "rosalind.common" }
;

ABOUT: "rosalind.common"

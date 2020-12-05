! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel ;
IN: rosalind.splc

HELP: splc
{ $values
    { "assoc" "An assoc converted from FASTA format" }
    { "protein" "The protein produced after splicing" }
}
{ $description "Solves the problem SPLC on Rosalind: given a long coding DNA and some introns, remove the introns, concatenate the exons, and translate it to a protein." } ;

HELP: splc-main
{ $description "Solves the problem SPLC on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.splc" "rosalind.splc"
{ $vocab-link "rosalind.splc" }
;

ABOUT: "rosalind.splc"

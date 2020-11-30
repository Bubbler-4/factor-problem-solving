! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.revc

HELP: revc
{ $values
    { "dna-str" "A DNA string" }
    { "reverse-complement" "Reverse complement of the input DNA string" }
}
{ $description "Solves the problem REVC on Rosalind: given a DNA string, output the reverse complement of it (replace ACGT by TGCA respectively, and then reverse the string)." } ;

HELP: revc-main
{ $description "Solves the problem REVC on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.revc" "rosalind.revc"
{ $vocab-link "rosalind.revc" }
;

ABOUT: "rosalind.revc"

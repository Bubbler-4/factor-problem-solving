! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.orf

HELP: orf
{ $values
    { "dna" "A DNA string" }
    { "proteins" "All possible distinct proteins that can be made out of input DNA" }
}
{ $description "Solves the problem ORF on Rosalind: find all distinct proteins that can be made from both strands of the given DNA (the input DNA and its reverse complement)." } ;

HELP: orf-main
{ $description "Solves the problem ORF on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.orf" "rosalind.orf"
{ $vocab-link "rosalind.orf" }
;

ABOUT: "rosalind.orf"

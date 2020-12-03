! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel ;
IN: rosalind.grph

HELP: grph
{ $values
    { "assoc" "An assoc from FASTA data" }
    { "edges" "Edges of overlap graph" }
}
{ $description "Solves the problem GRPH on Rosalind: output all edges of overlap graph where the last 3 chars of the first node equals the first 3 chars of the second." } ;

HELP: grph-main
{ $description "Solves the problem GRPH on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.grph" "rosalind.grph"
{ $vocab-link "rosalind.grph" }
;

ABOUT: "rosalind.grph"

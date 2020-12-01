! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax strings ;
IN: rosalind.gc

HELP: gc
{ $values
    { "assoc" "An assoc between the ID and the DNA string" }
    { "item" "A 2-item array of { ID, GC content% }" }
}
{ $description "Solves the problem GC on Rosalind: given some DNA strings in FASTA format, identify the DNA that has the largest GC content." } ;

HELP: gc-main
{ $description "Solves the problem GC on Rosalind, using a real dataset." } ;

HELP: fasta>assoc
{ $values
    { "str" string }
    { "assoc" assoc }
}
{ $description "Parses a string in FASTA format and returns an assoc of ID - content pairs." } ;

ARTICLE: "rosalind.gc" "rosalind.gc"
{ $vocab-link "rosalind.gc" }
;

ABOUT: "rosalind.gc"

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

ARTICLE: "rosalind.common" "rosalind.common"
{ $vocab-link "rosalind.common" }
;

ABOUT: "rosalind.common"

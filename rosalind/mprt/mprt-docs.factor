! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax ;
IN: rosalind.mprt

HELP: mprt
{ $values
    { "assoc" assoc }
    { "assoc'" assoc }
}
{ $description "Solves the problem MPRT on Rosalind: given some protein IDs and the corresponding protein strings fetched from UniProt, return the ones that contain the motif N{P}[ST]{P} along with the 1-based positions." } ;

HELP: mprt-main
{ $description "Solves the problem MPRT on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.mprt" "rosalind.mprt"
{ $vocab-link "rosalind.mprt" }
;

ABOUT: "rosalind.mprt"

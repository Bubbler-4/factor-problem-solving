! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel strings ;
IN: rosalind.subs

HELP: subs
{ $values
    { "string" "A DNA string" } { "motif" "A DNA string" }
    { "indices" "A sequence of 1-based indices where motif appears in string" }
}
{ $description "Solves the problem SUBS on Rosalind: find the 1-based indices where motif appears as a substring of a DNA string." } ;

HELP: subs-main
{ $description "Solves the problem SUBS on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.subs" "rosalind.subs"
{ $vocab-link "rosalind.subs" }
;

ABOUT: "rosalind.subs"

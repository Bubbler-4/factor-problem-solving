! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math ;
IN: rosalind.inod

HELP: inod
{ $values
    { "n" integer }
    { "m" integer }
}
{ $description "Solves the problem INOD on Rosalind: compute the number of internal nodes of any unrooted binary tree having n leaves. By graph theory, the answer is n-2." } ;

HELP: inod-main
{ $description "Solves the problem INOD on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.inod" "rosalind.inod"
{ $vocab-link "rosalind.inod" }
;

ABOUT: "rosalind.inod"

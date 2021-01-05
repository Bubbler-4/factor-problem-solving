! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs help.markup help.syntax kernel sequences strings ;
IN: rosalind.corr

HELP: 1diff?
{ $values
    { "str1" string } { "str2" string }
    { "?" boolean }
}
{ $description "Tests if the two strings are different at exactly one position." } ;

HELP: corr
{ $values
    { "strs" sequence }
    { "corrections" assoc }
}
{ $description "Solves the problem CORR on Rosalind: Some DNA strings are given. Some are correct ones appearing more than once, and the rest are mutated at exactly one position, appearing exactly once. Given that some DNA strings may appear as reverse complement, identify and correct the mutated DNA strings." } ;

HELP: corr-main
{ $description "Solves the problem CORR on Rosalind, using a real dataset." } ;

HELP: rcmp-pair
{ $values
    { "str" string }
    { "pair" sequence }
}
{ $description "Given a DNA string, returns a 2-item sequence of itself and its reverse complement." } ;

ARTICLE: "rosalind.corr" "rosalind.corr"
{ $vocab-link "rosalind.corr" }
;

ABOUT: "rosalind.corr"

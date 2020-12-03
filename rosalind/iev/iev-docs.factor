! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.iev

HELP: iev
{ $values
    { "vec" "A 6-item sequence of integers" }
    { "n" "Expected offsprings with dominant phenotype" }
}
{ $description "Solves the problem IEV on Rosalind: given the counts of six couple types, output the expected number of offsprings having dominant phenotype when each couple produces two offsprings. The six couple types are given as: AA-AA, AA-Aa, AA-aa, Aa-Aa, Aa-aa, aa-aa. In each case, the expected (dominant phenotype) offspring is 2, 2, 2, 3/2, 1, 0." } ;

HELP: iev-main
{ $description "Solves the problem IEV on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.iev" "rosalind.iev"
{ $vocab-link "rosalind.iev" }
;

ABOUT: "rosalind.iev"

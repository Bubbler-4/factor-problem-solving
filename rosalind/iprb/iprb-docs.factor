! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.iprb

HELP: iprb
{ $values
    { "k" "The number of organisms with two copies of dominant gene" }
    { "m" "The number of organisms with single copy of dominant gene" }
    { "n" "The number of organisms with no copies of dominant gene" }
    { "prob" "The probability that an offspring has dominant phenotype" }
}
{ $description "Solves the problem IPRB on Rosalind: suppose that k organisms have double dominant gene, m have single dominant gene, and n have double recessive gene. If two organisms are uniformly randomly selected to mate, output the chance that the offspring has dominant phenotype." { $nl "" }
"If we consider all possible ordered pairs of genes, " { $snippet "2(k+m+n) * 2(k+m+n-1)" } " pairs are possible. To simplify a bit, we count the cases where the offspring has recessive phenotype and take the complement. If the first pick is from \"single dominant\" group, there are " { $snippet "m * (m-1 + 2*n)" } " cases. If the first pick is from \"double recessive\" group, there are " { $snippet "2n * (2n-2 + m)" } " cases. The sum of two cases can be simplified to " { $snippet "(m+2n)^2 - m - 4n" } "." } ;

HELP: iprb-main
{ $description "Solves the problem IPRB on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.iprb" "rosalind.iprb"
{ $vocab-link "rosalind.iprb" }
;

ABOUT: "rosalind.iprb"

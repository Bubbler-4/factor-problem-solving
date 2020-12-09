! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel ;
IN: rosalind.lia

HELP: lia
{ $values
    { "k" "An integer" } { "n" "An integer" }
    { "p" "A float" }
}
{ $description "Solves the problem LIA on Rosalind: starting with an organism with AaBb genotype at 0th generation, suppose that each organism mates with an AaBb and reproduces two children. At k-th generation, calculate the probability that there are at least n organisms with AaBb genotype." { $nl "" }
"The code uses the fact that each organism at any generation has exactly 1/4 chance of being an AaBb. Polynomial power gives a sequence where i-th value is the chance of having exactly i AaBb's in the population." } ;

HELP: lia-main
{ $description "Solves the problem LIA on Rosalind, using a real dataset." } ;

ARTICLE: "rosalind.lia" "rosalind.lia"
{ $vocab-link "rosalind.lia" }
;

ABOUT: "rosalind.lia"

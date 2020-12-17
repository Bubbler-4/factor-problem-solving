! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: help.markup help.syntax kernel math ;
IN: projecteuler.euler258

HELP: euler258-fast
{ $values
    { "n" integer } { "k" integer } { "m" integer }
    { "ans" integer }
}
{ $description "Solves the problem for given input, using the special inner function " { $snippet "polykm-special" } "." } ;

HELP: euler258-main
{ $description "Solves Project Euler P258 using the given inputs." } ;

HELP: euler258-slow
{ $values
    { "n" integer } { "k" integer } { "m" integer }
    { "ans" integer }
}
{ $description "Solves the problem for given input, using the general inner function " { $snippet "polykm" } "." } ;

HELP: p-sq'
{ $values
    { "poly" "A polynomial" }
    { "poly'" "A polynomial" }
}
{ $description "Given a polynomial, squares it using Kronecker substitution. Assumes that all input coefficients are non-negative, and 64 bits are enough to store a single coefficient in the square of the polynomial (which holds for the given inputs)." } ;

HELP: polykm
{ $values
    { "poly" "A polynomial" } { "k" integer } { "m" integer }
    { "poly'" "A polynomial" }
}
{ $description "Computes x^k modulo poly, where coefficients are calculated modulo m. Uses fast polynomial squaring, but slow polynomial modulo." } ;

HELP: polykm-special
{ $values
    { "n" integer } { "k" integer } { "m" integer }
    { "poly" "A polynomial" }
}
{ $description "Computes x^k modulo (x^n-x-1), where coefficients are calculated modulo m. Polynomial modulo is accelerated with hardcoded array splitting." } ;

ARTICLE: "projecteuler.euler258" "projecteuler.euler258"
{ $vocab-link "projecteuler.euler258" }
;

ABOUT: "projecteuler.euler258"

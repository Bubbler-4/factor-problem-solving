! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: math.vectors rosalind.prob tools.test ;
IN: rosalind.prob.tests

{ t } [
  "ACGATACAA" { 0.129 0.287 0.423 0.476 0.641 0.742 0.783 } prob
  { -5.737 -5.217 -5.263 -5.360 -5.958 -6.628 -7.009 } 0.001 v~
] unit-test
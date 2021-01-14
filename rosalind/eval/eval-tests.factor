! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.eval ;
IN: rosalind.eval.tests

{ t } [ 10 "AG" { 0.25 0.5 0.75 } eval { 0.422 0.563 0.422 } 0.001 v~ ] unit-test
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.tree ;
IN: rosalind.tree.tests

{ 3 } [ 10 { { 1 2 } { 2 8 } { 4 10 } { 5 9 } { 6 10 } { 7 9 } } tree ] unit-test

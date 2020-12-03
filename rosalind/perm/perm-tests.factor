! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.perm ;
IN: rosalind.perm.tests

{ { { 1 2 3 } { 1 3 2 } { 2 1 3 } { 2 3 1 } { 3 1 2 } { 3 2 1 } } 6 }
[ 3 perm ] unit-test

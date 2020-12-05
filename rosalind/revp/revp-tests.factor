! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: rosalind.revp sets tools.test ;
IN: rosalind.revp.tests

{ t } [ "TCAATGCATGCGGGTCTATATGCAT" revp
{ { 4 6 } { 5 4 } { 6 6 } { 7 4 } { 17 4 } { 18 4 } { 20 6 } { 21 4 } } set= ] unit-test

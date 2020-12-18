! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.pdst math.matrices ;
IN: rosalind.pdst.tests

CONSTANT: example { "TTTCCATTTA" "GATTCATTTC" "TTTCCATTTT" "GTTCCATTTA" }
CONSTANT: ans { { 0.0 0.4 0.1 0.1 } { 0.4 0.0 0.4 0.3 } { 0.1 0.4 0.0 0.2 } { 0.1 0.3 0.2 0.0 } }

{ t } [ example pdst ans 0.001 m~ ] unit-test

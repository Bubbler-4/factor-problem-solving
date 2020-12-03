! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays tools.test rosalind.subs ;
IN: rosalind.subs.tests

{ { 2 4 10 } } [ "GATATATGCATATACTT" "ATAT" subs >array ] unit-test
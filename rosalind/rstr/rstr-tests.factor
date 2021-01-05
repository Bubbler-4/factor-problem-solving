! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: math.functions rosalind.rstr tools.test ;
IN: rosalind.rstr.tests

{ t } [ 90000 0.6 "ATAGCCGA" rstr 0.689 0.001 ~ ] unit-test
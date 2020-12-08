! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: rosalind.lcsm sequences tools.test ;
IN: rosalind.lcsm.tests

{ 2 } [ { "GATTACA" "TAGACCA" "ATACA" } lcsm length ] unit-test

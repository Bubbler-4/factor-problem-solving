! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.kmp ;
IN: rosalind.kmp.tests

{ V{ 0 0 0 1 2 0 0 0 0 0 0 1 2 1 2 3 4 5 3 0 0 } } [ "CAGCATGGTATCACAGCAGAG" kmp ] unit-test
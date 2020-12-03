! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2020.day2 ;
IN: aoc2020.day2.tests

{ t } [ "1-3 a: abcde" password-valid? ] unit-test
{ f } [ "1-3 b: cdefg" password-valid? ] unit-test
{ t } [ "2-9 c: ccccccccc" password-valid? ] unit-test

{ t } [ "1-3 a: abcde" password-valid?' ] unit-test
{ f } [ "1-3 b: cdefg" password-valid?' ] unit-test
{ f } [ "2-9 c: ccccccccc" password-valid?' ] unit-test

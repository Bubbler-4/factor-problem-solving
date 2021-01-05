! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2015.day5 ;
IN: aoc2015.day5.tests

{ t } [ "ugknbfddgicrmopn" nice-silver? ] unit-test
{ t } [ "aaa" nice-silver? ] unit-test
{ f } [ "jchzalrnumimnmhp" nice-silver? ] unit-test
{ f } [ "haegwjzuvuyypxyu" nice-silver? ] unit-test
{ f } [ "dvszwmarrgswjxmb" nice-silver? ] unit-test

{ t } [ "qjhvhtzxzqqjkmpb" nice-gold? ] unit-test
{ t } [ "xxyxx" nice-gold? ] unit-test
{ f } [ "uurcxstgmygtbstg" nice-gold? ] unit-test
{ f } [ "ieodomkazucvgmuy" nice-gold? ] unit-test
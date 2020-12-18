! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2020.day18 math ;
IN: aoc2020.day18.tests

{ 71 } [ "1 + 2 * 3 + 4 * 5 + 6" eval-expr ] unit-test
{ 51 } [ "1 + (2 * 3) + (4 * (5 + 6))" eval-expr ] unit-test
{ 26 } [ "2 * 3 + (4 * 5)" eval-expr ] unit-test
{ 437 } [ "5 + (8 * 3 + 9 + 3 * 4 * 3)" eval-expr ] unit-test
{ 12240 } [ "5 * 9 * (7 * 3 * 3 + 9 * 3 + (8 + 6 * 4))" eval-expr ] unit-test
{ 13632 } [ "((2 + 4 * 9) * (6 + 9 * 8 + 6) + 6) + 2 + 4 * 2" eval-expr ] unit-test

{ 71 } [ "1 + 2 * 3 + 4 * 5 + 6" eval-expr2 ] unit-test
{ 51 } [ "1 + (2 * 3) + (4 * (5 + 6))" eval-expr2 ] unit-test
{ 26 } [ "2 * 3 + (4 * 5)" eval-expr2 ] unit-test
{ 437 } [ "5 + (8 * 3 + 9 + 3 * 4 * 3)" eval-expr2 ] unit-test
{ 12240 } [ "5 * 9 * (7 * 3 * 3 + 9 * 3 + (8 + 6 * 4))" eval-expr2 ] unit-test
{ 13632 } [ "((2 + 4 * 9) * (6 + 9 * 8 + 6) + 6) + 2 + 4 * 2" eval-expr2 ] unit-test

{ 231 } [ "1 + 2 * 3 + 4 * 5 + 6" eval-expr' ] unit-test
{ 51 } [ "1 + (2 * 3) + (4 * (5 + 6))" eval-expr' ] unit-test
{ 46 } [ "2 * 3 + (4 * 5)" eval-expr' ] unit-test
{ 1445 } [ "5 + (8 * 3 + 9 + 3 * 4 * 3)" eval-expr' ] unit-test
{ 669060 } [ "5 * 9 * (7 * 3 * 3 + 9 * 3 + (8 + 6 * 4))" eval-expr' ] unit-test
{ 23340 } [ "((2 + 4 * 9) * (6 + 9 * 8 + 6) + 6) + 2 + 4 * 2" eval-expr' ] unit-test

{ 231 } [ "1 + 2 * 3 + 4 * 5 + 6" eval-expr2' ] unit-test
{ 51 } [ "1 + (2 * 3) + (4 * (5 + 6))" eval-expr2' ] unit-test
{ 46 } [ "2 * 3 + (4 * 5)" eval-expr2' ] unit-test
{ 1445 } [ "5 + (8 * 3 + 9 + 3 * 4 * 3)" eval-expr2' ] unit-test
{ 669060 } [ "5 * 9 * (7 * 3 * 3 + 9 * 3 + (8 + 6 * 4))" eval-expr2' ] unit-test
{ 23340 } [ "((2 + 4 * 9) * (6 + 9 * 8 + 6) + 6) + 2 + 4 * 2" eval-expr2' ] unit-test
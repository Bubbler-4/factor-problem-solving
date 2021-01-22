! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: aoc2015.day10 kernel sequences tools.test ;
IN: aoc2015.day10.tests

{ { { 1 1 } { 2 1 } { 1 2 1 1 } { 1 1 1 2 2 1 } { 3 1 2 2 1 1 } } }
[ { 1 } 5 [ look-say dup ] replicate nip ] unit-test
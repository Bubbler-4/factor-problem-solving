! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel rosalind.sign sets tools.test ;
IN: rosalind.sign.tests

CONSTANT: output { { -1 -2 } { -1 2 } { 1 -2 } { 1 2 } { -2 -1 } { -2 1 } { 2 -1 } { 2 1 } }

{ t 8 } [ 2 sign [ output set= ] dip ] unit-test
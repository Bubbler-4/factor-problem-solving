! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test aoc2020.day15 ;
IN: aoc2020.day15.tests

{ 436 } [ { 0 3 6 } day15-silver ] unit-test
{ 1 } [ { 1 3 2 } day15-silver ] unit-test
{ 10 } [ { 2 1 3 } day15-silver ] unit-test
{ 27 } [ { 1 2 3 } day15-silver ] unit-test
{ 78 } [ { 2 3 1 } day15-silver ] unit-test
{ 438 } [ { 3 2 1 } day15-silver ] unit-test
{ 1836 } [ { 3 1 2 } day15-silver ] unit-test

{ 175594 } [ { 0 3 6 } day15-gold2 ] unit-test
{ 2578 } [ { 1 3 2 } day15-gold2 ] unit-test
{ 3544142 } [ { 2 1 3 } day15-gold2 ] unit-test
{ 261214 } [ { 1 2 3 } day15-gold2 ] unit-test
{ 6895259 } [ { 2 3 1 } day15-gold2 ] unit-test
{ 18 } [ { 3 2 1 } day15-gold2 ] unit-test
{ 362 } [ { 3 1 2 } day15-gold2 ] unit-test
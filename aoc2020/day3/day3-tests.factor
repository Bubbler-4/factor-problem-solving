! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: aoc2020.day3 fry kernel multiline sequences splitting
tools.test ;
IN: aoc2020.day3.tests

STRING: example
..##.......
#...#...#..
.#....#..#.
..#.#...#.#
.#...##..#.
..#.##.....
.#.#.#....#
.#........#
#.##...#...
#...##....#
.#..#...#.#
;

{ 7 } [ example "\n" split 3 trees-on-slope ] unit-test
{ 336 } [ { 1 3 5 7 1/2 } example "\n" split '[ _ swap trees-on-slope ] map product ] unit-test

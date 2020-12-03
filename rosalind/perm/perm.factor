! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io io.encodings.utf8 io.files kernel math.combinatorics
math.parser math.ranges prettyprint sequences ;
IN: rosalind.perm

: perm ( n -- perms length ) [ [1,b] all-permutations ] [ factorial ] bi ;

: perm-main ( -- ) "datasets/rosalind/perm.txt" utf8 file-contents
  string>number perm . [ [ number>string ] map " " join print ] each ;

MAIN: perm-main
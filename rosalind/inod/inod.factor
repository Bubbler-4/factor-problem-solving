! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files math math.parser prettyprint ;
IN: rosalind.inod

: inod ( n -- m ) 2 - ;

: inod-main ( -- ) "datasets/rosalind/inod.txt" utf8 file-contents dec> inod . ;

MAIN: inod-main
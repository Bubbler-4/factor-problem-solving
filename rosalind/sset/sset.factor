! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files math math.parser prettyprint ;
IN: rosalind.sset

: sset ( n -- m ) 2^ 1000000 mod ;

: sset-main ( -- ) "datasets/rosalind/sset.txt" utf8 file-contents dec> sset . ;

MAIN: sset-main
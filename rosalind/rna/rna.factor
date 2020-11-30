! Copyright (C) 2020 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: io io.encodings.utf8 io.files kernel sequences ;
IN: rosalind.rna

CONSTANT: T CHAR: T
CONSTANT: U CHAR: U

: rna ( dna-str -- rna-str ) [ dup T = [ drop U ] when ] map ;

: rna-main ( -- ) "datasets/rosalind/rna.txt" utf8 file-contents rna print ;

MAIN: rna-main

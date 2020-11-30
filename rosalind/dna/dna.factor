! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs io io.encodings.utf8 io.files math math.parser
math.statistics sequences sorting ;
IN: rosalind.dna

: dna ( str -- counts )
  "ACGT" append histogram sort-keys values [ 1 - number>string ] map " " join ;

: dna-main ( -- ) "datasets/rosalind/dna.txt" utf8 file-contents dna print ;

MAIN: dna-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: accessors assocs http.client io io.encodings.utf8
io.files kernel math math.parser regexp rosalind.common
sequences sequences.extras splitting ;
IN: rosalind.mprt

: mprt ( assoc -- assoc' )
  [ R/ (?=N[^P][ST][^P])/ all-matching-slices [ from>> 1 + ] map ] map-values harvest-values ;

: mprt-main ( -- ) "datasets/rosalind/mprt.txt" utf8 file-contents
  "\n" split [ dup "http://www.uniprot.org/uniprot/" ".fasta" surround http-get nip fasta>assoc first second ] { } map>assoc
  mprt [ [ print ] [ [ number>string ] map " " join print ] bi* ] assoc-each
  ;

MAIN: mprt-main
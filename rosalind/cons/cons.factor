! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io io.encodings.utf8 io.files kernel math
math.parser math.statistics prettyprint sequences sorting
splitting strings ;
IN: rosalind.cons

: fasta>assoc ( str -- assoc )
  ">" split [ "\n" split harvest ] map harvest
  [ [ first ] [ rest concat ] bi 2array ] map ;

: cons ( assoc -- histo consensus )
  values flip [ [ "ACGT" append histogram sort-keys values [ 1 - ] map ] map flip ]
  [ [ mode ] map >string ] bi ;

: cons-main ( -- ) "datasets/rosalind/cons.txt" utf8 file-contents fasta>assoc
  cons print "ACGT" [ write1 ": " write [ number>string ] map " " join print ] 2each ;

MAIN: cons-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io io.encodings.utf8 io.files kernel math
prettyprint sequences sorting splitting ;
IN: rosalind.gc

: gc ( assoc -- item ) [ [ [ "GC" member? ] count ] [ length ] bi /f 100 * ] assoc-map sort-values last ;

: fasta>assoc ( str -- assoc )
  ">" split [ "\n" split harvest ] map harvest
  [ [ first ] [ rest concat ] bi 2array ] map ;

: gc-main ( -- ) "datasets/rosalind/gc.txt" utf8 file-contents fasta>assoc
  gc first2 swap print . ;

MAIN: gc-main
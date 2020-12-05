! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs fry grouping io io.encodings.utf8 io.files
rosalind.common sequences splitting ;
IN: rosalind.splc

: splc ( assoc -- protein )
  values 1 cut [ '[ _ split-subseq ] map concat ] each
  concat { "TU" } substitute 3 group [ rna3>amino ] "" map-as
  "." split first ;

: splc-main ( -- ) "datasets/rosalind/splc.txt" utf8 file-contents
  fasta>assoc splc print ;

MAIN: splc-main
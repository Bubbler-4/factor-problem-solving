! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: grouping io io.encodings.utf8 io.files kernel math
sequences splitting rosalind.common ;
IN: rosalind.prot

: prot ( rna -- protein )
  3 group [ rna3>amino ] "" map-as
  "." split first ;

: prot-main ( -- ) "datasets/rosalind/prot.txt" utf8 file-contents
  prot print ;

MAIN: prot-main
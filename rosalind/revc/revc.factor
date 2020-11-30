! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs io io.encodings.utf8 io.files sequences ;
IN: rosalind.revc

: revc ( dna-str -- reverse-complement )
  [ H{ "AT" "CG" "GC" "TA" } at ] map reverse ;

: revc-main ( -- ) "datasets/rosalind/revc.txt" utf8 file-contents revc print ;

MAIN: revc-main
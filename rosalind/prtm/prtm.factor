! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs io.encodings.utf8 io.files prettyprint sequences rosalind.common ;
IN: rosalind.prtm

: prtm ( protein -- mass ) [ protein-mass-table at ] { } map-as sum ;

: prtm-main ( -- ) "datasets/rosalind/prtm.txt" utf8 file-contents
  prtm . ;

MAIN: prtm-main
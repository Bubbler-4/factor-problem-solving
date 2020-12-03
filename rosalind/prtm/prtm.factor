! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs io.encodings.utf8 io.files prettyprint sequences ;
IN: rosalind.prtm

CONSTANT: mass-table H{
  { CHAR: A 71.03711 }
  { CHAR: C 103.00919 }
  { CHAR: D 115.02694 }
  { CHAR: E 129.04259 }
  { CHAR: F 147.06841 }
  { CHAR: G 57.02146 }
  { CHAR: H 137.05891 }
  { CHAR: I 113.08406 }
  { CHAR: K 128.09496 }
  { CHAR: L 113.08406 }
  { CHAR: M 131.04049 }
  { CHAR: N 114.04293 }
  { CHAR: P 97.05276 }
  { CHAR: Q 128.05858 }
  { CHAR: R 156.10111 }
  { CHAR: S 87.03203 }
  { CHAR: T 101.04768 }
  { CHAR: V 99.06841 }
  { CHAR: W 186.07931 }
  { CHAR: Y 163.06333 }
}

: prtm ( protein -- mass ) [ mass-table at ] { } map-as sum ;

: prtm-main ( -- ) "datasets/rosalind/prtm.txt" utf8 file-contents
  prtm . ;

MAIN: prtm-main
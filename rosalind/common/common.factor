! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs grouping kernel math sequences splitting sequences.extras ;
IN: rosalind.common

: fasta>assoc ( str -- assoc )
  ">" split [ "\n" split harvest ] map harvest
  [ [ first ] [ rest concat ] bi 2array ] map ;

CONSTANT: amino-table "FFLLSSSSYY..CC.WLLLLPPPPHHQQRRRRIIIMTTTTNNKKSSRRVVVVAAAADDEEGGGG"

: rna3>amino ( rna3 -- amino )
  [ "UCAG" index ] map 0 [ swap 4 * + ] reduce
  amino-table nth ;

: rna>protein ( rna -- protein )
  dup 3 head "AUG" =
  [ 3 group [ rna3>amino ] "" map-as
    "." split ?first2 swap f ?
  ] [ drop f ] if ;

: reverse-complement ( dna -- dna' )
  "ACGT" "TGCA" zip substitute reverse ;

CONSTANT: protein-mass-table H{
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
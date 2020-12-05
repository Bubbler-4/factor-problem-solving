! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays kernel math sequences splitting ;
IN: rosalind.common

: fasta>assoc ( str -- assoc )
  ">" split [ "\n" split harvest ] map harvest
  [ [ first ] [ rest concat ] bi 2array ] map ;

CONSTANT: amino-table "FFLLSSSSYY..CC.WLLLLPPPPHHQQRRRRIIIMTTTTNNKKSSRRVVVVAAAADDEEGGGG"

: rna3>amino ( rna3 -- amino )
  [ "UCAG" index ] map 0 [ swap 4 * + ] reduce
  amino-table nth ;
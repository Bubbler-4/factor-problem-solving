! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs fry grouping io io.encodings.utf8 io.files
kernel math.parser rosalind.common sequences ;
IN: rosalind.revp

: reverse-palindrome? ( dna -- ? )
  dup "ACGT" "TGCA" zip substitute reverse = ;

: revp ( dna -- pairs )
  { 4 6 8 10 12 } swap
  '[ _ over clump [ reverse-palindrome? ] map t swap indices [ 1 + ] map
    swap '[ _ 2array ] map ] map concat ;

: revp-main ( -- ) "datasets/rosalind/revp.txt" utf8 file-contents
  fasta>assoc first second revp [ [ 10 >base ] map " " join print ] each ;

MAIN: revp-main
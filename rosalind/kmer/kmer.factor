! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs grouping io io.encodings.utf8 io.files kernel
math.combinatorics math.parser rosalind.common sequences sorting
;
IN: rosalind.kmer

: kmer ( str -- counts )
  [ "ACGT" 4 selections [ 0 ] H{ } map>assoc ] dip
  4 clump [ over inc-at ] each sort-keys values ;

: kmer-main ( -- ) "datasets/rosalind/kmer.txt" utf8 file-contents
  fasta>assoc values first kmer [ 10 >base ] map " " join print ;

MAIN: kmer-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs fry grouping io io.encodings.utf8 io.files
kernel rosalind.common sequences sets ;
IN: rosalind.orf

: orf ( dna -- proteins )
  dup reverse-complement 2array
  [ { "TU" } substitute
    dup 3 clump "AUG" swap indices
    swap '[ _ swap tail rna>protein ] map
  ] map concat sift members ;

: orf-main ( -- ) "datasets/rosalind/orf.txt" utf8 file-contents
  fasta>assoc first second orf [ print ] each ;

MAIN: orf-main
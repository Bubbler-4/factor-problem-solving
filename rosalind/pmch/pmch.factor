! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io.encodings.utf8 io.files kernel
math.factorials math.statistics prettyprint rosalind.common
sequences ;
IN: rosalind.pmch

: pmch ( str -- counts )
  histogram "AC" >array swap substitute [ n! ] map product ;

: pmch-main ( -- ) "datasets/rosalind/pmch.txt" utf8 file-contents
  fasta>assoc values first pmch . ;

MAIN: pmch-main
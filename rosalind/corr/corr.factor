! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io io.encodings.utf8 io.files kernel locals
rosalind.common sequences sequences.extras sets ;
IN: rosalind.corr

: rcmp-pair ( str -- pair )
  dup reverse "ACGT" "TGCA" zip substitute 2array ;

: 1diff? ( str1 str2 -- ? ) [ = not ] 2count 1 = ;

:: corr ( strs -- corrections )
  strs [ rcmp-pair ] map concat duplicates :> correct
  strs [| s | s correct [ s 1diff? ] find nip 2array ] map
  sift-values ;

: corr-main ( -- ) "datasets/rosalind/corr.txt" utf8 file-contents
  fasta>assoc values corr [ "->" join print ] each ;

MAIN: corr-main
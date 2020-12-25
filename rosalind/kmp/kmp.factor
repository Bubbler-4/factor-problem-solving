! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: rosalind.common ;
IN: rosalind.kmp

:: ((kmp)) ( vec elem seq cur -- vec )
  cur [
    seq nth elem = [ vec cur 1 + suffix! ] [
      vec elem seq cur 1 - vec ?nth ((kmp))
    ] if
  ] [ vec 0 suffix! ] if* ;

: (kmp) ( vec elem seq -- vec ) pick ?last ((kmp)) ;

: kmp ( seq -- seq' )
  f >vector over '[ _ (kmp) ] reduce ;

: kmp-main ( -- ) "datasets/rosalind/kmp.txt" utf8 file-contents
  fasta>assoc values first kmp [ 10 >base ] map " " join
  "/tmp/kmp.txt" utf8 set-file-contents ;

MAIN: kmp-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files kernel locals math math.parser
prettyprint sequences splitting ;
IN: rosalind.iprb

:: iprb ( k m n -- prob )
  1 m n 2 * + sq m n 4 * + -    ! (m+2n)^2 - m - 4n
  k m n + + dup 1 - * 4 * /f -  ! 1 - above / 4(k+m+n)(k+m+n-1)
;

: iprb-main ( -- ) "datasets/rosalind/iprb.txt" utf8 file-contents
  " " split [ dec> ] map first3 iprb . ;

MAIN: iprb-main

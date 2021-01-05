! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs io io.encodings.utf8 io.files kernel locals
math math.functions math.parser prettyprint sequences splitting
;
IN: rosalind.rstr

: 1-n ( n -- 1-n ) 1 swap - ;

:: rstr ( trials gc-content str -- prob )
  "GACT" gc-content dup 1-n 2array [ 2 / ] map dup append zip
  [ str >array ] dip substitute product 1-n trials ^ 1-n ;

: rstr-main ( -- ) "datasets/rosalind/rstr.txt" utf8 file-contents
  " \n" split first3 [ [ dec> ] bi@ ] dip rstr . ;

MAIN: rstr-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files math math.parser math.vectors
prettyprint sequences splitting ;
IN: rosalind.iev

: iev ( vec -- n )
  { 2 2 2 3/2 1 0 } v. ;

: iev-main ( -- ) "datasets/rosalind/iev.txt" utf8 file-contents
  " " split [ dec> ] map iev >float . ;

MAIN: iev-main
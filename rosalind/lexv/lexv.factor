! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: fry io.encodings.utf8 io.files kernel math.combinatorics
math.parser math.ranges sequences sets sorting splitting ;
IN: rosalind.lexv

: lexv ( str n -- seqs )
  over [ [1,b] ] [ length [0,b) ] bi*
  '[ _ swap selections ] map concat natural-sort
  swap '[ _ nths ] map ;

: lexv-main ( -- ) "datasets/rosalind/lexv.txt" utf8 file-contents
  "\n" split first2 [ " " without ] [ dec> ] bi* lexv
  "/tmp/lexv.txt" utf8 set-file-lines ;

MAIN: lexv-main
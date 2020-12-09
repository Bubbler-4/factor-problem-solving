! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs combinators io.encodings.utf8 io.files kernel math
math.statistics prettyprint rosalind.common sequences sorting
strings ;
IN: rosalind.tran

: trans-type ( seq -- type/f )
  natural-sort >string
  { { [ dup { "AG" "CT" } member? ] [ drop 1 ] }
    { [ dup first2 = not ] [ drop 2 ] }
    [ drop f ] } cond ;

: tran ( str1 str2 -- ratio )
  zip [ trans-type ] map sift histogram
  { 1 2 } swap substitute first2 /f ;

: tran-main ( -- ) "datasets/rosalind/tran.txt" utf8 file-contents
  fasta>assoc values first2 tran . ;

MAIN: tran-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs grouping.extras hash-sets io
io.encodings.utf8 io.files kernel math math.combinatorics
rosalind.common sequences sets sets.extras ;
IN: rosalind.long

: overlap ( str1 str2 -- str )
  [ <head-clumps> [ dupd tail? ] find-last drop ?1+ head* ] keep append ;

: find-most-overlapping-pair ( strs -- strs' )
  2 <k-permutations> [ first2 2dup overlap 3array ] map
  [ [ length ] map first3 - + ] supremum-by ;

: long ( strs -- str )
  [ >hash-set ] keep length 1 - [
    dup members find-most-overlapping-pair >hash-set symmetric-diff
  ] times members first ;

: long-main ( -- ) "datasets/rosalind/long.txt" utf8 file-contents
  fasta>assoc values long
  "/tmp/long.txt" utf8 set-file-contents ;

MAIN: long-main
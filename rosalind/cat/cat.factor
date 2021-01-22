! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs combinators io.encodings.utf8 io.files
kernel math math.functions memoize prettyprint rosalind.common
sequences ;
IN: rosalind.cat

: unbalanced? ( seq -- ? ) sum 0 = not ;

DEFER: noncrossing-matches

: (noncrossing-matches) ( seq -- n )
  unclip neg over indices
  [ cut rest [ noncrossing-matches ] bi@ * ] with map sum ;

MEMO: noncrossing-matches ( seq -- n )
  { { [ dup empty? ] [ drop 1 ] }
    { [ dup unbalanced? ] [ drop 0 ] }
    [ (noncrossing-matches) ]
  } cond ;

: cat ( str -- n )
  >array [ 2/ 1 i* swap ^ ] map
  noncrossing-matches 1000000 mod ;

: cat-main ( -- )
  "datasets/rosalind/cat.txt" utf8 file-contents
  fasta>assoc first second
  cat . ;

MAIN: cat-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: binary-search fry io io.encodings.utf8 io.files kernel
locals math math.order math.parser sequences splitting vectors ;
IN: rosalind.lgis

:: (longest-increasing-subseq) ( vec n -- vec )
  vec [ last n >=< ] search [ ?1+ ] dip n suffix
  swap vec set-nth vec ;

: longest-increasing-subseq ( seq -- seq' )
  { -1/0. } 1vector [ (longest-increasing-subseq) ] reduce last rest ;

: lgis ( seq -- seq+ seq- )
  [ longest-increasing-subseq ]
  [ [ neg ] map longest-increasing-subseq [ neg ] map ] bi ;

: lgis-main ( -- ) "datasets/rosalind/lgis.txt" utf8 file-contents
  "\n" split last " " split [ dec> ] map
  lgis [ [ 10 >base ] map " " join print ] bi@ ;

MAIN: lgis-main
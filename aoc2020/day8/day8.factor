! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs combinators fry io.encodings.utf8 io.files
kernel locals math math.parser prettyprint sequences splitting ;
IN: aoc2020.day8

:: run-cmd ( acc pc cmd -- acc pc )
  cmd first2 :> n {
    { "nop" [ acc pc 1 + ] }
    { "acc" [ acc n + pc 1 + ] }
    { "jmp" [ acc pc n + ] }
  } case ;

:: (run-until-loop) ( prgm acc pc hist -- ? acc )
  pc prgm bounds-check? [
    pc hist member? [ f acc ] [
      prgm acc pc pc prgm nth run-cmd
      hist pc suffix (run-until-loop)
    ] if
  ] [ t acc ] if ;

: run-until-loop ( prgm -- ? acc ) 0 0 { } (run-until-loop) ;

: day8-silver ( prgm -- acc ) run-until-loop nip ;

: swap-nth-instr ( prgm n -- prgm )
  '[ _ = [ first2 [ { "nop" "acc" "jmp" } dup reverse zip at ] dip 2array ] when ] map-index ;

:: day8-gold ( prgm -- acc )
  prgm [ [ drop prgm ] dip swap-nth-instr run-until-loop and ] map-index sift first ;

: day8-main ( -- ) "datasets/aoc2020/day8.txt" utf8 file-contents
  "\n" split [ " " split first2 dec> 2array ] map
  [ day8-silver . ] [ day8-gold . ] bi ;

MAIN: day8-main
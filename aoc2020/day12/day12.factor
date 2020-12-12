! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays combinators fry io.encodings.utf8 io.files kernel
math math.functions math.parser prettyprint sequences splitting
;
IN: aoc2020.day12

: run-command ( pos dir cmd -- pos' dir' )
  first2 {
    { CHAR: N [ '[ _ i* + ] dip ] }
    { CHAR: S [ '[ _ -i* + ] dip ] }
    { CHAR: E [ '[ _ + ] dip ] }
    { CHAR: W [ '[ _ - ] dip ] }
    { CHAR: L [ 90 / [ i* ] times ] }
    { CHAR: R [ 90 / [ -i* ] times ] }
    { CHAR: F [ [ * + ] keepd ] }
  } case ;

: run-command' ( pos waypoint cmd -- pos' waypoint' )
  first2 {
    { CHAR: N [ i* + ] }
    { CHAR: S [ -i* + ] }
    { CHAR: E [ + ] }
    { CHAR: W [ - ] }
    { CHAR: L [ 90 / [ i* ] times ] }
    { CHAR: R [ 90 / [ -i* ] times ] }
    { CHAR: F [ [ * + ] keepd ] }
  } case ;

: day12-silver ( cmds -- ans )
  [ 0 1 ] dip [ run-command ] each drop
  >rect [ abs ] bi@ + ;

: day12-gold ( cmds -- ans )
  [ 0 C{ 10 1 } ] dip [ run-command' ] each drop
  >rect [ abs ] bi@ + ;

: day12-main ( -- ) "datasets/aoc2020/day12.txt" utf8 file-contents
  "\n" split [ unclip [ dec> ] dip 2array ] map
  [ day12-silver . ] [ day12-gold . ] bi ;

MAIN: day12-main
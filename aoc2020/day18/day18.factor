! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: combinators eval io.encodings.utf8 io.files kernel math
math.parser multiline peg.ebnf prettyprint regexp sequences
sequences.extras sets splitting ;
IN: aoc2020.day18

: eval-expr ( str -- n )
  " " without R/ [+*]\d/ [ reverse ] re-replace-with
  10 [ 10 [ R/ [+*]\([^\(\)]+\)/ [ 2 cut [ but-last ] bi@ prepend ] re-replace-with ] times
  R/ \([^\(\)]+\)/ [ rest but-last ] re-replace-with ] times
  32 interleaved eval( -- n ) ;

EBNF: eval-expr2 [=[
  num = [0-9]+ => [[ dec> ]]
  term = "(" expr ")" => [[ second ]] | num
  expr = expr " + " term => [[ first3 nip + ]] | expr " * " term => [[ first3 nip * ]] | term
]=]

: day18-silver ( strs -- sum )
  [ eval-expr2 ] map sum ;

: eval-expr' ( str -- n ) "(" ")" surround
  [ [ [ R/ \d+( \+ \d+)+/ [ " + " split-subseq [ dec> ] map sum 10 >base ] re-replace-with ] to-fixed-point
  R/ (?<=\()\d+( \* \d+)+(?=\))/ [ " * " split-subseq [ dec> ] map product 10 >base ] re-replace-with ] to-fixed-point
  R/ \(\d+\)/ [ rest but-last ] re-replace-with ] to-fixed-point dec> ;

EBNF: eval-expr2' [=[
  num = [0-9]+ => [[ dec> ]]
  term = "(" expr ")" => [[ second ]] | num
  sum = sum " + " term => [[ first3 nip + ]] | term
  expr = expr " * " sum => [[ first3 nip * ]] | sum
]=]

: day18-gold ( strs -- sum ) [ eval-expr2' ] map sum ;

: day18-main ( -- ) "datasets/aoc2020/day18.txt" utf8 file-contents "\n" split
  [ day18-silver . ] [ day18-gold . ] bi ;

MAIN: day18-main
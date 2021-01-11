! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays io io.encodings.utf8 io.files kernel math.parser
math.ranges regexp sequences sets splitting ;
IN: rosalind.seto

: 2set-ops ( set1 set2 -- sets )
  { [ union ] [ intersect ] [ diff ] [ swap diff ] }
  [ call( x x -- x ) ] 2with map ;

: set-complements ( n set1 set2 -- sets )
  2array [ [1,b] ] dip [ diff ] with map ;

: seto ( n set1 set2 -- sets )
  [ nipd 2set-ops ] [ set-complements ] 3bi append ;

: parse-set ( str -- seq )
  R/ \d+/ all-matching-subseqs [ dec> ] map ;

: print-set ( seq -- )
  [ number>string ] map ", " join "{" "}" surround print ;

: seto-main ( -- ) "datasets/rosalind/seto.txt" utf8 file-contents
  "\n" split first3 [ dec> ] [ parse-set ] dup tri*
  seto "/tmp/seto.txt" utf8 [ [ print-set ] each ] with-file-writer ;

MAIN: seto-main
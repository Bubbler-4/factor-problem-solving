! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: checksums checksums.md5 io.encodings.utf8 io.files kernel
math math.parser prettyprint sequences ;
IN: aoc2015.day4

: append-md5 ( str n -- value )
  number>string append md5 checksum-bytes ;

: 5-leading-zeros? ( bytes -- ? )
  first3 [ 0 = ] [ 0 = ] [ 16 < ] tri* and and ;

: day4-silver ( str -- n )
  1/0. [ append-md5 5-leading-zeros? ] with find-integer ;

: append-md5' ( checksum-state n -- value )
  [ clone ] dip number>string add-checksum-bytes get-checksum ;

: day4-silver2 ( str -- n )
  md5 initialize-checksum-state swap add-checksum-bytes
  1/0. [ append-md5' 5-leading-zeros? ] with find-integer ;

: 6-leading-zeros? ( bytes -- ? )
  3 head [ 0 = ] all? ;

: day4-gold ( str -- n )
  1/0. [ append-md5 6-leading-zeros? ] with find-integer ;

: day4-gold2 ( str -- n )
  md5 initialize-checksum-state swap add-checksum-bytes
  1/0. [ append-md5' 6-leading-zeros? ] with find-integer ;

: day4-main ( -- ) "datasets/aoc2015/day4.txt" utf8 file-contents
  [ day4-silver2 . ] [ day4-gold2 . ] bi ;

MAIN: day4-main
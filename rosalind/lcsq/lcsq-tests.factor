! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel rosalind.lcsq sequences tools.test ;
IN: rosalind.lcsq.tests

: subsequence? ( sub seq -- ? )
  dup empty? [ 2drop f ] [
    over empty? [ 2drop t ] [
      2dup [ first ] bi@ =
      [ [ rest ] bi@ ] [ rest ] if subsequence?
    ] if
  ] if ;

{ 6 } [ "AACCTTGG" "ACACTGTGA" lcsq length ] unit-test
{ t } [ "AACCTTGG" "ACACTGTGA" lcsq "AACCTTGG" subsequence? ] unit-test
{ t } [ "AACCTTGG" "ACACTGTGA" lcsq "ACACTGTGA" subsequence? ] unit-test
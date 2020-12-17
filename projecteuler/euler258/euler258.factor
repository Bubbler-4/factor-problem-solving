! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays grouping kernel locals math math.bits
math.functions math.polynomials prettyprint sequences ;
IN: projecteuler.euler258

: p-sq' ( poly -- poly' )
  64 2^ swap polyval sq make-bits 64 group [ bits>number ] map ;

:: polykm ( poly k m -- poly' )
  poly length 2 - k >= [ k 0 <array> 1 suffix ] [
    poly k 2/ m polykm
    p-sq' k odd? [ 0 prefix ] when
    poly p/mod nip [ m mod ] map
  ] if ;

:: polykm-special ( n k m -- poly )
  n 1 - k >= [ k 0 <array> 1 suffix ] [
    n k 2/ m polykm-special
    p-sq' k odd? [ 0 prefix ] when
    2 [ n short cut dup 0 prefix p+ p+ ] times [ m mod ] map
  ] if ;

: euler258-slow ( n k m -- ans )
  [ 2 - 0 <array> { -1 -1 } { 1 } surround ] 2dip
  [ polykm sum ] keep mod ;

: euler258-fast ( n k m -- ans )
  [ polykm-special sum ] keep mod ;

: euler258-main ( -- )
  2000 10 18 ^ 20092010 euler258-fast . ;

MAIN: euler258-main

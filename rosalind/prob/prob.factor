! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs fry io io.encodings.utf8 io.files kernel
math math.functions math.parser sequences splitting ;
IN: rosalind.prob

: prob ( str gc-probs -- logprobs )
  swap '[ 2 / 0.5 over - 2array dup append
    "GACT" swap zip _ >array swap substitute
    [ log10 ] map sum ] map ;

: prob-main ( -- ) "datasets/rosalind/prob.txt" utf8 file-contents
  "\n" split first2 " " split [ dec> ] map prob [ number>string ] map " " join print ;

MAIN: prob-main
! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays kernel sequences splitting ;
IN: rosalind.common

: fasta>assoc ( str -- assoc )
  ">" split [ "\n" split harvest ] map harvest
  [ [ first ] [ rest concat ] bi 2array ] map ;
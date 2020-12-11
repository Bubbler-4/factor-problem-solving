! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: io.encodings.utf8 io.files kernel math math.parser
prettyprint sequences splitting ;
IN: rosalind.tree

: tree ( n adjlist -- ans ) length - 1 - ;

: tree-main ( -- ) "datasets/rosalind/tree.txt" utf8 file-contents
  "\n" split unclip dec> swap [ " " split [ dec> ] map ] map tree . ;

MAIN: tree-main
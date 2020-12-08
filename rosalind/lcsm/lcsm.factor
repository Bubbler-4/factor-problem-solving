! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays assocs combinators fry io io.encodings.utf8
io.files kernel math rosalind.common sequences sequences.extras
;
IN: rosalind.lcsm

: dna>enum ( string -- array ) >array "$ACGT" { } zip-index-as substitute 0 suffix ;

! deeply nested array where every node is a fixed-length array
! branches with zero entries are f

: trie-init ( -- trie ) 5 f <array> ;

! in-place operation
: trie-add ( trie string -- )
  [ ! ( trie char -- trie )
    [ swap nth ]
    [ ! ( nth/f trie char -- trie )
      rot [ 2nip ] [ trie-init [ spin set-nth ] [ ] bi ] if*
    ] 2bi
  ] each drop ;

: trie-longest-prefix ( trie string -- string )
  [ ! ( trie char -- trie'/f trie'/f )
    swap nth dup
  ] take-while nip ;

: suffix-trie ( string -- trie )
  dup '[ nip _ swap tail-slice ] map-index
  trie-init [ [ trie-add ] keepd ] reduce ;

: trie-intersect-string ( trie string -- trie )
  dup '[ nip _ swap tail-slice ] map-index
  trie-init [ ! ( prevtrie trie string -- prevtrie trie )
    overd trie-longest-prefix [ zero? ] trim-tail 0 suffix [ trie-add ] keepd
  ] reduce nip ;

: trie-strings ( trie -- seq )
  { { f [ { } ] }
    { { f f f f f } [ { { } } ] }
    [ [ [ trie-strings ] dip '[ _ prefix ] map ] map-index concat ] } case ;

: enum>dna ( array -- string ) [ zero? ] trim-tail "$ACGT" nths ;

: intersect-dnas ( dnas -- intersections )
  [ dna>enum ] map unclip suffix-trie  [ trie-intersect-string ] reduce
  trie-strings [ enum>dna ] map ;

: lcsm ( dnas -- dna ) intersect-dnas longest ;

: lcsm-main ( -- ) "datasets/rosalind/lcsm.txt" utf8 file-contents fasta>assoc values lcsm print ;

MAIN: lcsm-main
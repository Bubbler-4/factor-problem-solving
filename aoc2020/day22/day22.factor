! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: arrays hash-sets io.encodings.utf8 io.files kernel locals
math math.parser math.ranges math.vectors prettyprint sequences
sequences.extras sets sorting splitting ;
IN: aoc2020.day22

: 1turn ( deck1 deck2 -- deck1' deck2' )
  [ unclip ] bi@ swapd 2dup < [ 2array natural-sort reverse { } ] dip [ swap ] when
  swapd [ append ] 2bi@ ;

: day22-silver ( decks -- n ) first2 2dup shorter [ drop 1turn 2dup shorter ] until-empty longer
  dup length [1,b] reverse v. ;

:: 1turn' ( history deck1 deck2 -- history deck1' deck2' )
  deck1 deck2 2array history in? [ history deck1 { } ] [
    deck1 deck2 2array history adjoin
    history deck1 deck2 1turn
  ] if ;

: 1game ( deck1 deck2 -- deck1' deck2' )
  [ { } >hash-set ] 2dip 2dup shorter [ drop
    2dup [ [ first ] [ length ] bi < ] both? [
      [ unclip 2dup head 3array ] bi@ 2array flip first3  ! decks cards newdecks
      first2 1game nip empty?
      [ [ first2 ] dip swap [ append ] dip ] [ [ first2 ] dip reverse append ] if  ! p1 wins / p2 wins
    ] [ 1turn' ] if
    2dup shorter
  ] until-empty nipd ;

: day22-gold ( decks -- n ) first2 1game longer
  dup length [1,b] reverse v. ;

: day22-main ( -- ) "datasets/aoc2020/day22.txt" utf8 file-contents "\n\n" split-subseq
  [ "\n" split rest [ dec> ] map ] map
  [ day22-silver . ]
  ! [ drop ]
  [ day22-gold . ]
  bi ;

MAIN: day22-main
! Copyright (C) 2021 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: accessors assocs formatting io io.directories
io.encodings.utf8 io.files io.launcher kernel math.matrices
multiline prettyprint sequences splitting
tools.profiler.sampling tools.scaffold tools.test tools.time
vocabs.loader ;
IN: tools.problem-solving

STRING: body-with-dataset-template
: %s ( -- ) ;

: %s-main ( -- ) "datasets/%s/%s.txt" utf8 file-contents %s . ;

MAIN: %s-main
;

STRING: aoc-body-template
: %s-data ( -- data )
  "datasets/%s/%s.txt" utf8 file-contents ;

: %s-silver ( -- ) ;

: %s-gold ( -- ) ;

: %s-main ( -- )
  %s-data [ %s-silver . ] [ %s-gold . ] bi ;

MAIN: %s-main
;

STRING: body-without-dataset-template
: %s ( -- ) ;

: %s-main ( -- ) 0 %s . ;

MAIN: %s-main
;

: ps-init-notice ( -- )
  nl nl "Copy the following into source for convenience:" print ;

: body-with-dataset ( vocab-name -- )
  ps-init-notice
  "." split [ { 1 1 0 1 1 1 } ] dip nths
  body-with-dataset-template nl vprintf nl ;

: body-without-dataset ( vocab-name -- )
  ps-init-notice
  "." split [ { 1 1 1 1 } ] dip nths
  body-without-dataset-template nl vprintf nl ;

: aoc-body ( vocab-name -- )
  ps-init-notice
  "." split [ { 1 0 1 1 1 1 1 1 1 1 } ] dip nths
  aoc-body-template nl vprintf nl ;

: touch-dataset-file ( vocab-name -- vocab-name )
  dup { "./" } substitute "datasets/" ".txt" surround
  make-parent-directories touch-file ;

: ps-init ( vocab-name -- vocab-name )
  [ [ "." ] dip scaffold-vocab ]
  [ body-without-dataset ] [ ] tri ;

: ps-init+ ( vocab-name -- vocab-name )
  [ [ "." ] dip scaffold-vocab ]
  [ body-with-dataset ] [ touch-dataset-file ] tri ;

: aoc-init ( vocab-name -- vocab-name )
  [ [ "." ] dip scaffold-vocab ]
  [ aoc-body ] [ touch-dataset-file ] tri ;

: ps-rerun ( vocab-name -- vocab-name )
  dup reload dup run ;

: ps-reload ( vocab-name -- vocab-name )
  dup reload ;

: ps-time ( vocab-name -- vocab-name )
  dup reload [ dup run ] time ;

: ps-profile ( vocab-name -- vocab-name )
  dup reload [ dup run ] profile flat profile. ;

: ps-test ( vocab-name -- vocab-name )
  dup scaffold-tests ;

: ps-doc ( vocab-name -- vocab-name )
  dup scaffold-docs ;

: ps-test-doc ( vocab-name -- vocab-name )
  ps-test ps-doc ;

: ps-run-test ( vocab-name -- vocab-name )
  dup test ;

/*
: save-bitmap-image ( matrix path -- )
  "." split first ".pgm" append
  make-parent-directories utf8 [
    "P2" print [ dim [ "%d " printf ] each nl ] keep
    [ concat supremum . ] keep
    [ [ "%d " printf ] each nl ] each
  ] with-file-writer ;

: pnm>png ( path -- )
  "." split first [ "pnmtopng " ".pgm" surround ] [ ".png" append ] bi
  <process> rot >>command swap >>stdout "/dev/null" >>stderr
  run-process drop ;

: save-png-image ( matrix path -- )
  [ save-bitmap-image ] [ pnm>png ] bi ;
*/
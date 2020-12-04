! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: assocs combinators io.encodings.utf8 io.files kernel
math.order math.parser math.vectors prettyprint regexp sequences
sequences.generalizations sets splitting ;
IN: aoc2020.day4

: day4-silver ( assocs -- count )
  [ keys { "byr" "iyr" "eyr" "hgt" "hcl" "ecl" "pid" } swap subset? ] count ;

: valid-byr? ( str -- ? ) dec> dup 0 ? 1920 2002 between? ;
: valid-iyr? ( str -- ? ) dec> dup 0 ? 2010 2020 between? ;
: valid-eyr? ( str -- ? ) dec> dup 0 ? 2020 2030 between? ;
: valid-hgt? ( str -- ? ) 2 cut* [ dec> dup 0 ? ] dip "cm" = [ 150 193 ] [ 59 76 ] if between? ;
: valid-hcl? ( str -- ? ) R/ #[0-9a-f]{6}/ matches? ;
: valid-ecl? ( str -- ? ) { "amb" "blu" "brn" "gry" "grn" "hzl" "oth" } member? ;
: valid-pid? ( str -- ? ) R/ \d{9}/ matches? ;

: day4-gold ( assocs -- count )
  [ keys { "byr" "iyr" "eyr" "hgt" "hcl" "ecl" "pid" } swap subset? ] filter
  [ { "byr" "iyr" "eyr" "hgt" "hcl" "ecl" "pid" } swap substitute
    7 firstn { [ valid-byr? ] [ valid-iyr? ] [ valid-eyr? ] [ valid-hgt? ] [ valid-hcl? ] [ valid-ecl? ] [ valid-pid? ] } spread
    7 narray vall?
  ] count ;

: day4-main ( -- ) "datasets/aoc2020/day4.txt" utf8 file-contents
  "\n\n" split-subseq [ "\n " split [ ":" split ] map ] map
  [ day4-silver . ] [ day4-gold . ] bi ;

MAIN: day4-main
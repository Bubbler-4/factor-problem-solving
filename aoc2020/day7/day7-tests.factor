! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: aoc2020.day7 assocs multiline sequences splitting
tools.test ;
IN: aoc2020.day7.tests

STRING: example
light red bags contain 1 bright white bag, 2 muted yellow bags.
dark orange bags contain 3 bright white bags, 4 muted yellow bags.
bright white bags contain 1 shiny gold bag.
muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.
shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.
dark olive bags contain 3 faded blue bags, 4 dotted black bags.
vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.
faded blue bags contain no other bags.
dotted black bags contain no other bags.
;

: preprocessed ( -- assoc ) example "\n" split [ parse-line ] map H{ } assoc-like ;
{ 4 } [ preprocessed day7-silver ] unit-test
{ 32 } [ preprocessed day7-gold ] unit-test

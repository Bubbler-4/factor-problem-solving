! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: grouping math.order rosalind.lexv sequences tools.test ;
IN: rosalind.lexv.tests

{ 39 } [ "DNA" 3 lexv length ] unit-test
{ t } [ "DNA" 3 lexv [ [ "DNA" index ] { } map-as ] map [ before? ] monotonic? ] unit-test
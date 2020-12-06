! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: rosalind.orf sets tools.test ;
IN: rosalind.orf.tests

{ t }
[ "AGCCATGTAGCTAACTCAGGTTACATGGGGATGACCCCGCGACTTGGATTAGAGTCTCTTTTGGAATAAGCCTGAATGATCCGAGTAGCATCTCAG" orf
  { "MLLGSFRLIPKETLIQVAGSSPCNLS"
    "M"
    "MGMTPRLGLESLLE"
    "MTPRLGLESLLE" } set= ] unit-test
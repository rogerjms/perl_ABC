#!/usr/bin/perl 
use strict;
use warnings;
use BeginPerlBioinfo; 
my $annotation;
my $dna;
my $record;
my $filename = 'record.gb';
my $save_input_separator = $/;
unless (open(GBFILE, $filename)) {
print "Cannot open GenBank file \"$filename\"\n\n";
exit;
}
$/ = "//\n";
$record = <GBFILE>;
$/ = $save_input_separator;
($annotation, $dna) = ($record =~/^(LOCUS.*ORIGIN\s*\n)(.*)\/\/\n/s);
print $annotation, $dna;
exit;

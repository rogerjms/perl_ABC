#!/usr/bin/perl -w
use strict;

my $ref_arr = ['A', 55, 1..6, 'oops'];
print "$ref_arr\n";
print "@{$ref_arr}\n";
print ${$ref_arr}[1] + 5, "\n";

1;

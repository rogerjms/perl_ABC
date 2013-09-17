#!/usr/local/bin/perl -w
use strict;
my @try;
my $seq;
my $a;
my $b;
my %hash;
my $key;
my $value;
my @a;
open TR,"new_result" or die "$!\n";
# @try=<TRY>;
open AA,">aa";
 while($seq=<TR>){
 	chomp($seq);
($a,$b)=split(/\t/,$seq);
 push (@a,$a);
 	}
print AA "@a";

























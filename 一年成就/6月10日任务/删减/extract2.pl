#!/usr/local/bin/perl -w
use strict;
my @try;
my $seq;
my $a;
my $b;
my %hash;
my $key;
my $value;
open TRY,"try" or die "$!\n";
# @try=<TRY>;
 while($seq=<TRY>){
 	chomp($seq);
($a,$b)=split(/\t/,$seq);
 #print $a;
$hash{"$b"}=$a;
 	}
 	while (($key, $value) = each %hash) {
   print "$key => $value\n";
}
print values %hash;



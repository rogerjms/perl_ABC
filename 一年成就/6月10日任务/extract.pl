#!/usr/local/bin/perl -w
use strict;
my @tair;
my @hash;
my %seen;
my @uni;
open TAIR,"TAIR10_all.domains" or die "$!\n";
chomp(@tair=<TAIR>);
open RESULT,">result";
foreach(@tair){
	if(/(AT.{7}).*(IPR\d+).*/){
    print RESULT $1,"\t",$2,"\n";
  }
}
close TAIR;
close RESULT;
open RESULT ,"result" or die "$!\n";
@hash=<RESULT>;
foreach(@hash){
 	 $seen{$_}=1;
}
@uni=keys %seen;
open HA,">new_result" or die "$!\n";
print HA "@uni\n";
close HA;
1;

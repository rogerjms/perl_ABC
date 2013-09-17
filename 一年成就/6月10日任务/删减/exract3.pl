#!/usr/local/bin/perl -w
use strict;
my @try;
my $seq;
my $a;
my $b;
my @a;
my @b;
my %seen;
my @uni;
my %no;
my $key;
my $value;
my @try2;
my @k;
my $res;
open TRY,"try" or die "$!\n";
chomp( @try=<TRY>);
for(my $i=0;$i<scalar @try;$i++){
	 $no{$i}=[split("\t",$try[$i])];
}
foreach $key(keys(%no)) {
}
@try2=qw(a a b b);
foreach(@try2){
 	$seen{$_}=1;
 	}
 @uni=keys %seen;
# print "@uni\n";
 $b=$uni[1];
for(my $k=0;$k<scalar @try;$k++){
	
	
	if($try[$k]=~m/$b/){
    push(@k,$k);
    #print "$k\n";
		}
	}
 
#print @k;
foreach(@k){
	$res=$no{$_}->[1];
	print $res,"\t";
}
 	


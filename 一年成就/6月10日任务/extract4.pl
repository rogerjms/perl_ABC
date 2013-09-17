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
my $try2;
my @res;
my $p;
open ZH,">zhong";
open TAIR,"new_result" or die "$!\n";
chomp( @try=<TAIR>);
for(my $i=0;$i<scalar @try;$i++){
	 $no{$i}=[split("\t",$try[$i])];
}
foreach $key(keys(%no)) {
}
#@try2=qw(a a b b);
open AA ,"aa";
$try2=<AA>;
@try2=split(/\s/,$try2);
#print $try2[1];
foreach(@try2){
 	$seen{$_}=1;
 	}
 @uni=keys %seen;
 #print "$uni[1]\n";
 for($p=0;$p<@uni;$p++){
    $b=$uni[$p];
for(my $k=0;$k<scalar @try;$k++){
	
	
	if($try[$k]=~m/$b/){
    push(@k,$k);
    #print "$k\n";
		}
	}
foreach(@k){
	$res=$no{$_}->[1];
	push(@res,$res);#这里所难题
}
print ZH $b,"\t","@res","\n";
@res=();
@k=();

}


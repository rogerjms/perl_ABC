#!/usr/bin/perl -w
use strict;
#programmed by guixiaoke at
#Tue Feb 28 16:23:47 2012
my @d;
my $i;
my $c=0;
my $num;
my @b;
my @oc;
my $j;
my $row;
my @row;
my $rec;
open R,">median.R";
open OC ,"OC.txt";
@oc=<OC>;
#print $oc[0];
for($j=0;$j<scalar @oc;$j++){
	$row=$oc[$j];
	@row=split / /,$row;
	chomp @row;
	$rec=join ",",@row;
	#print "@row\n";
	#print "######################\n";
	#$row="";
	#mean(@row);
	
	print  <<HERE;
a <- c($rec);
cat(mean(a),"\\t",sd(a),"\\n");
HERE
}

















###########################################################
#####################
# Subroutines
###########################################################
#####################
sub mean{
 my(@a)=@_;
 my $num;
 $num=scalar @a;
 my $i;
#print $num,"\n";
for($i=0;$i<$num;$i++){
	 $c=$a[$i]+$c;
	} 
	#print $c,"\n";
	print $c/$num,"\n";
	$c=0;
}

exit;
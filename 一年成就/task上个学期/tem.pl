#!/usr/bin/perl -w
$flag=0;
open (TEM,"tem1")or die "can not open it!\n";
@a=<TEM>;
#print @a;
foreach $line (@a){
	if( $line =~ /^ORIGIN/ ) { 
 last;            
}elsif($flag){
	push(@s,$line);
}elsif($line=~/^ {5}CDS.*/){
	$flag=1;}
	
	}
open(TE,">simple");
print TE @s;


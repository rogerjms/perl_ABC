#!/usr/local/bin/perl -w     
use strict;
my @a;
my @b;
my @c;
my $a;
my $b;
my $c;
my $d;
my $e;
my $f;
my %hash;
my %hash2;
my @d;
my @e;
my %hash3;
my $key;
my @f;
open DD,">result";
open BB,"b";
select (DD);       
while(<BB>){    
	($c,$d)=split(/\s/,$_);     
$hash{$c}=$_; }              
open CC,"c";                   
while(<CC>){    
($e,$f)=split(/\s/,$_);     
$hash2{$e}=$_;               
} 
 #print $hash2{1};    
   #print $hash{"a"};  
open AA,"a";  
while(<AA>){
	  ($a,$b)=split(/\s/,$_);  
	     @d=($hash{$a},$hash2{$b});
	     $_=join(" ",@d);
	     $_=~s/\n//g;
	     @e=split(/\s/,$_);
	     #print "@e","\n";
	     foreach(@e){                                
	     	$hash3{$_}++;                              
	     }                                           
	     foreach $key(keys(%hash3)) {                
	        push(@f,$key) if( $hash3{$key} > 1);     
	     }                                           
	     print DD $a,"\t",$b,"\t","@f","\n";            
	     @f=();
	     %hash3=();                                      
	     }      
              
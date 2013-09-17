#!/usr/local/bin/perl                           
#use strict;                                             
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
my @d=();                                                  
my @e;                                                  
my %hash3;                                              
my $key;                                                
my @f;                                                  
open FIN,">final_result";                                                 
                                                        
select (FIN);                                                       
open BB,"sem_result2";                                            
while(<BB>){                                            
	($c,$d)=split(/\s/,$_);                               
$hash{$c}=$_; }                                         
open CC,"Ath_28717_locus_IPR.txt";                                            
while(<CC>){                                            
($e,$f)=split(/\s/,$_);                                 
$hash2{$e}=$_;                                          
}                                                                                                               
open AA,"AS.bbh";                                          
while(<AA>){                                               
	  ($a,$b)=split(/\s/,$_);
	  @d=($hash{$b},$hash2{$a});
	     $_=join(" ",@d);                                   
	     $_=~s/\n//g;                                                           
	     @e=split(/\s/,$_);                                  
	     foreach(@e){                                        
	     	$hash3{$_}++;                                      
	     }                                                   
	     foreach $key(keys(%hash3)) {                        
	       push(@f,$key) if( $hash3{$key} > 1);             
	     }                                                   
	   print  $a,"\t",$b,"\t","@f","\n";                
	      @f=();                                              
	      %hash3=();                                          
	     }                                                   
                                                           
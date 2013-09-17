#!/usr/bin/perl
#2011-3-2
#get different edit site fom fas file
#读取一个文件夹下面的所有文件，比较每个文件中的两个序列，输出两个序列中的不同

use strict; 
use warnings;
use File::Find; 
open (RESULT,">different");#把不同之处存入文件

my $path = "D:/perl script/hu_count_site/data/";#这里需要写明操作文件夹的全路径
#my $path = "./test/";

opendir (IN, $path) or die "cannot chdir to $path : $!"; 

sub wanted { 
if ( -f $File::Find::name ) { 

my $file_path=$File::Find::name;

my ($name) = ($_ =~ /(.*)\.fas/);#去掉了后缀名

open (FH, $file_path);

#print RESULT "$file_path\n"; 
print RESULT "\n$name\n"; 

my $seq=<FH>;

if ($seq =~/LOCUS/){#文件格式为gbk格式
	my $seq1='';
	my $seq2='';
	my $flag=1;
	my $n_seq1=0;
	my $n_seq2=0;
	
        while(my $seq=<FH>){
        chomp($seq);
        if($seq=~ /^LOCUS/){#if it meet a locus, seq will belongs to seq2
	$flag=0;	#seq2
        }#if meet origin it belongs to seq2, set flag
        
        elsif($flag==1){ #flag=1,it is seq1
	if($seq =~ /ORIGIN/){$n_seq1=1;}
	if(($n_seq1==1) and ($seq !~ /\/\//) and ($seq !~ /ORIGIN/)){	
		$seq1 = $seq1.$seq;	
	}#if	

        }#if flag=1
        
         elsif($flag==0){#flag=0, it is seq2
         
	if($seq =~ /ORIGIN/){$n_seq2=1;}
	if($n_seq2==1 and $seq !~ /\/\// and $seq !~ /ORIGIN/){
	
		$seq2 = $seq2.$seq;	
	}#if	
       
        }#elsif
        
    }#while
    
    $seq1 =~ s/ //g;
    $seq1 =~ s/\d//g;
    $seq2 =~ s/ //g;
    $seq2 =~ s/\d//g;
    
    print RESULT "$seq1\n$seq2\n";

    my @seq1_array= split('',$seq1);
    my @seq2_array= split('',$seq2);
    my $len= length($seq1);
    for (my $i=0; $i<=$len;$i++){
    	if(( $seq1_array[$i] ne $seq2_array[$i])&&($seq1_array[$i]=~/[ACGT]/)&&($seq2_array[$i]=~/[ACGT]/)){
    		print RESULT "$i\t$seq1_array[$i]\t$seq2_array[$i]\n";
    		}#if
    	}#for
        
    
}#if gbk
elsif($seq=~ /\>/){#文件为标准fas格式
	my $seq1='';
	my $seq2='';
	my $flag=1;
      while(my $seq=<FH>){
      chomp ($seq);
      
	if($seq=~ /^\>/){#if it meet a symbol >, seq will belongs to seq2
	$flag=0;	
         }
	elsif($flag==1){
	 $seq1 .=$seq;
	}#flag=1,seq1	
	elsif($flag==0){
	$seq2 .=$seq;	
        }#flag=0,seq2					
      }#while
print RESULT "$seq1\n$seq2\n";

    my @seq1_array= split('',$seq1);
    my @seq2_array= split('',$seq2);
    my $len= length($seq1);
    for (my $i=0; $i<=$len;$i++){
    	if(( $seq1_array[$i] ne $seq2_array[$i])&&($seq1_array[$i]=~/[ACGT]/)&&($seq2_array[$i]=~/[ACGT]/)){
    		print RESULT "$i\t$seq1_array[$i]\t$seq2_array[$i]\n";
    		}#if
    	}#for
        

}#elsif fas
}#if 
}#sub wanted 

closedir IN;
find( \&wanted, $path ); 
close FH;
close RESULT

 $input=<STDIN>;
 $random_seq=make_random_DNA($input);
open DNA ,">","sequence" || die;
print DNA  $random_seq;
close DNA;
open DD,"sequence";
my $count_a=($random_seq =~tr/A//);
my $count_t=($random_seq =~ tr/T//);
my $count_c=($random_seq =~ tr/C//);
my $count_g=($random_seq =~ tr/G//);
#print $count_a,"\n";
#print $count_t,"\n";
#print $count_c,"\n";
#print $count_g,"\n";
sub make_random_DNA {
    my($length) = @_;
    my $dna;
		for (my $i=0 ; $i < $length ; ++$i) {
       $dna .= randomnucleotide(  );
    }
		return $dna;
}
sub randomnucleotide {

    my(@nucleotides) = ('A', 'C', 'G', 'T');
    return randomelement(@nucleotides);
}
sub randomelement {
     my(@array) = @_;
     return $array[rand @array];
   }
my %hash=(                                   
          "AA"=>"A",
	        "AC"=>"B",
	        "AG"=>"C",
	        "AT"=>"D",
	        "CA"=>"E",
	        "CC"=>"F",
	        "CG"=>"G",
	        "CT"=>"H",
	        "GA"=>"I",
          "GC"=>"J",
	        "GG"=>"K",
	        "GT"=>"L",
          "TA"=>"M",
          "TC"=>"N",
	        "TG"=>"O",
	        "TT"=>"P",
	        );
 $seq=<DD>;
 @seq=split("",$seq);#把随机生成的序列化成数组
for ( $count=0; $count < @seq; $count++){
	   $slice="";
	   $new_slice="";
    $slice=join('',@seq[$count,$count+1]);#对数组取切片，两两一组
    	 $new_slice.=$slice;#把这些切片连起来生成新的字串
      }
  
for (  $i=0; $i <length $new_slice; $i+=2){
	   
        push(@g, substr($new_slice,$i,2));#返回新的数组@g
    	}
foreach(  @g){
	 @result;
    	push(@result,$hash{$_});
 }
 
 

$result=join('',@result);
 $a=prob($result);
 print "$a";

sub prob{
	$a = shift;
 @a=split '',$a;
 $countA_1=($a =~ tr/A//);
 $countA_2=($a =~ tr/B//);
 $countA_3=($a =~ tr/C//);
 $countA_4=($a =~ tr/D//);
 $countT_1=($a =~ tr/E//);
 $countT_2=($a =~ tr/F//);
 $countT_3=($a =~ tr/G//);
 $countT_4=($a =~ tr/H//);
 $countC_1=($a =~ tr/I//);
 $countC_2=($a =~ tr/J//);
 $countC_3=($a =~ tr/K//);
 $countC_4=($a =~ tr/L//);
 $countG_1=($a =~ tr/M//);
 $countG_2=($a =~ tr/N//);
 $countG_3=($a =~ tr/O//);
 $countG_4=($a =~ tr/P//);
 $p_A=$countA_1 /($countA_1 + $countA_2 +$countA_3 +$countA_4); 
 $p_B=$countA_2 /($countA_1 + $countA_2 +$countA_3 +$countA_4);
 $p_C=$countA_3 /($countA_1 + $countA_2 +$countA_3 +$countA_4);
 $p_D=$countA_4 /($countA_1 + $countA_2 +$countA_3 +$countA_4);  
 $p_E=$countT_1 /($countT_1 + $countT_2 +$countT_3 +$countT_4); 
 $p_F=$countT_2 /($countT_1 + $countT_2 +$countT_3 +$countT_4); 
 $p_G=$countT_3 /($countT_1 + $countT_2 +$countT_3 +$countT_4); 
 $p_H=$countT_4 /($countT_1 + $countT_2 +$countT_3 +$countT_4); 
 $p_I=$countC_1 /($countC_1 + $countC_2 +$countC_3 +$countC_4); 
 $p_J=$countT_2 /($countC_1 + $countC_2 +$countC_3 +$countC_4); 
 $p_K=$countT_3 /($countC_1 + $countC_2 +$countC_3 +$countC_4); 
 $p_L=$countT_4 /($countC_1 + $countC_2 +$countC_3 +$countC_4);  
 $p_M=$countG_1 /($countG_1 + $countG_2 +$countG_3 +$countG_4 ) ; 
 $p_N=$countG_2 /($countG_1 + $countG_2 +$countG_3 +$countG_4 ) ;
 $p_O=$countG_3 /($countG_1 + $countG_2 +$countG_3 +$countG_4 ) ;
 $p_P=$countG_4 /($countG_1 + $countG_2 +$countG_3 +$countG_4 ) ;


return  @prob=($p_A,$p_B,$p_C,$p_D,$p_E,$p_F,$p_G,$p_H,$p_I,$p_J ,$p_K,$p_L,$p_M,$p_N,$p_O,$p_P );
}

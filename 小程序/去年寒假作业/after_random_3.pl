
print "你想生成多少条长度在100以内的随机序列？请输入条数:";
 chomp($input=<STDIN>);
my $random_seq=make_random_DNA($input);
my $count_a=($random_seq =~tr/A//);
my $count_t=($random_seq =~ tr/T//);
my $count_c=($random_seq =~ tr/C//);
my $count_g=($random_seq =~ tr/G//);
@count{A,T,C,G}=($count_a,$count_t,$count_c,$count_g);
while(my ($key,$value)=each %count){
	 print "在这$input条随机生成的序列中$key一共出现出现的次数是:\t$value\n";
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
	@seq=split("",$random_seq);#把随机生成的序列化成数组
  #print "@seq\n";
for (my $count=0; $count < scalar @seq; $count++){
	 
    $slice=join('',@seq[$count,$count+1]);#对数组取切片，两两一组
    	 $new_slice.=$slice;#把这些切片连起来生成新的字串
      }
      #print $new_slice;
  
for ( my $i=0; $i <length $new_slice; $i+=2){
	 
        push(@g, substr($new_slice,$i,2));#返回新的数组@g
    	}
    	# print "@g\n";
foreach(  @g){
 @result;
    	push(@result,$hash{$_});
 }
 
$result=join('',@result);
$a=$result;
@a=split '',$a;
  #print @a;
  $countA_1=($a =~ tr/A//);
 $countA_2=($a =~ tr/B//);
 $countA_3=($a =~ tr/C//);
 $countA_4=($a =~ tr/D//);
 $countC_1=($a =~ tr/E//);
 $countC_2=($a =~ tr/F//);
 $countC_3=($a =~ tr/G//);
 $countC_4=($a =~ tr/H//);
 $countG_1=($a =~ tr/I//);
 $countG_2=($a =~ tr/J//);
 $countG_3=($a =~ tr/K//);
 $countG_4=($a =~ tr/L//);
 $countT_1=($a =~ tr/M//);
 $countT_2=($a =~ tr/N//);
 $countT_3=($a =~ tr/O//);
 $countT_4=($a =~ tr/P//);


$countA=($countA_1 + $countA_2 +$countA_3 +$countA_4);
$countT=($countT_1 + $countT_2 +$countT_3 +$countT_4);
$countC=($countC_1 + $countC_2 +$countC_3 +$countC_4);
$countG=($countG_1 + $countG_2 +$countG_3 +$countG_4);
 if ($countA==0 ||$countT==0||$countC==0||$countG==0  ){
 	print "wrong!\n";
 	
 	}else{
 $p_A=$countA_1 /$countA; 
 $p_B=$countA_2 /$countA;
 $p_C=$countA_3 /$countA;
 $p_D=$countA_4 /$countA;
 $p_E=$countC_1 /$countC; 
 $p_F=$countT_2 /$countC; 
 $p_G=$countT_3 /$countC; 
 $p_H=$countT_4 /$countC; 
 $p_I=$countG_1 /$countG; 
 $p_J=$countG_2 /$countG;
 $p_K=$countG_3 /$countG;
 $p_L=$countG_4 /$countG;   
 $p_M=$countT_1 /$countT; 
 $p_N=$countT_2 /$countT; 
 $p_O=$countT_3 /$countT; 
 $p_P=$countT_4 /$countT; 



my @bases= sort  keys %hash;
#print "@bases\n";
my @prob=($p_A,$p_B,$p_C,$p_D,$p_E,$p_F,$p_G,$p_H,$p_I,$p_J ,$p_K,$p_L,$p_M,$p_N,$p_O,$p_P );
#print "@prob\n";
my %gxk;
@gxk{@bases}=@prob;
while(my ($key,$value)=each %gxk){
	 print "转变为$key的概率是:\t$value\n";
	}
}

sub make_random_DNA {
	 ($a)=@_;
	 for($j=0;$j<$a;$j++){
	     for (my $i=0 ; $i < int rand(100)  ; ++$i) {
       $dna .= randomnucleotide(  );
    }
		$ddd.=$dna
}
 return $ddd;
}
sub randomnucleotide {

    my(@nucleotides) = ('A', 'C', 'G', 'T');
    return randomelement(@nucleotides);
}
sub randomelement {
     my(@array) = @_;
     return $array[rand @array];
   }

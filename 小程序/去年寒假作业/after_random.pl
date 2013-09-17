$input=<STDIN>;
$random_seq=make_random_DNA($input);
open DNA ,">", sequence || die;
print DNA  $random_seq;
close DNA;
open DD,sequence;

sub make_random_DNA {

    # Collect arguments, declare variables
    my($length) = @_;

    my $dna;

    for (my $i=0 ; $i < $length ; ++$i) {
        $dna .= randomnucleotide(  );
    }

    return $dna;
}
sub randomnucleotide {

    my(@nucleotides) = ('A', 'C', 'G', 'T');

    # scalar returns the size of an array. 
    # The elements of the array are numbered 0 to size-1
    return randomelement(@nucleotides);
}
sub randomelement {

    my(@array) = @_;

    return $array[rand @array];
}


my %hash=(
	'AA'=>"P",
	'TT'=>"Q",
	'CC'=>"R",
	'GG'=>"S",
	'AT'=>"B",
	'AC'=>"N",
	'AG'=>"D",
	'TC'=>"E",
	'TG'=>"F",
	'CG'=>"O",
	'TA'=>"H",
	'CA'=>"I",
	'GA'=>"J",
	'CT'=>"K",
	'GT'=>"L",
	'GC'=>"M",
	);
$seq=<DD>;
@seq=split("",$seq);#把随机生成的序列化成数组
for (my $count=0; $count < @seq; $count++){
     my $slice=join('',@seq[$count,$count+1]);#对数组取切片，两两一组
    	  $new_slice.=$slice;#把这些切片连起来生成新的字串
      }
    
for ( my $i=0; $i <length $new_slice; $i+=2){
        push(@g, substr($new_slice,$i,2));#返回新的数组@g
    	}
foreach(@g){
    	push(@result,$hash{$_});#根据哈希表生成新的数组
      } 
$result=join('',@result);#再转变为字串，返回结果


#*****************************转变之后求和*********


$a=$result;
@a=split '',$a;
print @a;
$count1=($a =~tr/P//);
$count2=($a =~ tr/Q//);
$count3=($a =~ tr/R//);
$count4=($a =~ tr/S//);
$count5=($a =~ tr/B//);
$count6=($a =~ tr/N//);
$count7=($a =~ tr/D//);
$count8=($a =~ tr/E//);
$count9=($a =~ tr/F//);
$count10=($a =~ tr/O//);
$count11=($a =~ tr/H//);
$count12=($a =~ tr/I//);
$count13=($a =~ tr/J//);
$count14=($a =~ tr/K//);
$count15=($a =~ tr/L//);
$count16=($a =~ tr/M//);
my $len=length $a;
 if($len==0){
 	print "wrong\n";
 	}else{
$p_P= $count1 / $len;     
$p_Q= $count2 / $len;
$p_R= $count3 / $len;
$p_S= $count4 / $len;
$p_B= $count5 / $len;
$p_N= $count6 / $len;
$p_D= $count7 / $len;
$p_E= $count8 / $len;
$p_F= $count9 / $len;
$p_O= $count10 / $len;
$p_H= $count11 / $len;
$p_I= $count12 / $len;
$p_J= $count13 / $len;
$p_K= $count14 / $len;
$p_L= $count15 / $len;
$p_M= $count16 / $len;

print "\n",$p_P,"\n";
print $p_Q,"\n";
print $p_R,"\n";
print $p_S,"\n";
print $p_B,"\n";
print $p_N,"\n";
print $p_D,"\n";
print $p_E,"\n";
print $p_F,"\n";
print $p_O,"\n";
print $p_H,"\n";
print $p_I,"\n";
print $p_J,"\n";
print $p_K,"\n";
print $p_L,"\n";
print $p_M,"\n";

}
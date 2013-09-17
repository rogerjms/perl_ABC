#!/usr/bin/perl 
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
	'A'=>"A",
	'C'=>"C",
	'G'=>"G",
	'T'=>"T",
	);
$seq=$ARGV[0];
@seq=split("",$seq);
$first=$seq[0];
for (my $count=0; $count < @seq; $count++) {
     my  $s=join ('',@seq[$count,$count+1]);
    	 $d.=$s;
    }
     chop($d);
for ($i=0; $i <length $d; $i+=2){
        push(@g, substr($d,$i,2));
    	}
 foreach (@g){
    	push(@result,$hash{$_});
  } 
$result=join('',@result);


#*****************************转变之后求和*********


$a="$first.$result";
@a=split '',$a;
# print "@a";
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
$count17=($a =~ tr/A//);
$count18=($a =~ tr/C//);
$count19=($a =~ tr/G//);
$count20=($a =~ tr/T//);
$len=length $a;
    
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
$p_A= $count17 / $len;
$p_C= $count18 / $len;
$p_G= $count19 / $len;
$p_T= $count20 / $len;

#print $p_P,"\n";
#print $p_Q,"\n";
#print $p_R,"\n";
#print $p_S,"\n";
#print $p_B,"\n";
#print $p_N,"\n";
#print $p_D,"\n";
#print $p_E,"\n";
#print $p_F,"\n";
#print $p_O,"\n";
#print $p_H,"\n";
#print $p_I,"\n";
#print $p_J,"\n";
#print $p_K,"\n";
#print $p_L,"\n";
#print $p_M,"\n";
#print $p_A,"\n";
#print $p_C,"\n";
#print $p_G,"\n";
#print $p_T,"\n";
print -($p_P*log_base(2,$p_P)
 +$p_Q*log_base(2,$p_Q)
 +$p_R*log_base(2,$p_R)
 +$p_S*log_base(2,$p_S)
 +$p_B*log_base(2,$p_B)
 +$p_N*log_base(2,$p_N)
 +$p_D*log_base(2,$p_D)
 +$p_E*log_base(2,$p_E)
 +$p_F*log_base(2,$p_F)
 +$p_O*log_base(2,$p_O)
 +$p_H*log_base(2,$p_H)
 +$p_I*log_base(2,$p_I)
 +$p_J*log_base(2,$p_J)
 +$p_K*log_base(2,$p_K)
 +$p_L*log_base(2,$p_L)
 +$p_M*log_base(2,$p_M)
 +$p_A*log_base(2,$p_A)
 +$p_C*log_base(2,$p_C)
 +$p_G*log_base(2,$p_G)
 +$p_T*log_base(2,$p_T));
sub log_base {
    my ($base, $value) = @_;
    if ($value==0){
    	$pro==0;}elsif($value!=0){
     $pro=log($value)/log($base);}
     return $pro;
}

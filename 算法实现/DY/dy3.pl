my $pattern ='TGATCGAATCGATGGATC';
my $text =   'AAAAAAAAAAAAAA';
my $TLEN = length $text;
my $PLEN = length $pattern;
#构造匿名数据结构-矩阵

my $D = [ ];
#初始化首行跟列
for (my $t=0; $t <= $TLEN ; ++$t) {
$D->[$t][0] = -$t;
}
for (my $p=0; $p <= $PLEN ; ++$p) {
$D->[0][$p] = -$p;

}
#填充每一一个非首位置的空壳，用循环实现
for (my $t=1; $t <= $TLEN ; ++$t) {
for (my $p=1; $p <= $PLEN ; ++$p) {
if (substr($text, $t-1, 1) eq substr($pattern, $p-1, 1)){ $a=$D->[$t-1][$p-1] + 1 } else{$a=$D->[$t-1][$p-1] - 1};
$b=$D->[$t-1][$p] - 1;
$c=$D->[$t][$p-1] - 1;
$D->[$t][$p] =max3($a, $b, $c);
}
}
#把首行首列，跟非首行首列连起来，构成一个$TLEN+1，$,PLEN+1矩阵
for (my $p=0; $p <= $PLEN ; ++$p) {
for (my $t=0; $t <= $TLEN ; ++$t) {
print $D->[$t][$p], " ";
}
print "\n";
}
#定义取对大值的函数        
sub max3 {
my($i, $j, $k) = @_;
my($tmp);
$tmp = ($i < $j ? $j : $i);
$tmp < $k ? $k : $tmp;
}
#最总得到一个想要的矩阵
#下一步回溯，回溯就是从最后一个格子开始，找出一条和值最大的线路。最后输出两条比对序列，$align1,$align2




my $align1 = "";
my $align2 = "";
for (my $p=$PLEN ; $p >= 0 ; --$p) {
for (my $t=$TLEN; $t >= 0 ; --$t) {
if ($D->[$t][$p] eq $b) {#当某一个格子里得知是从上边位置得到的，
        $align1 = substr($text, $TLEN, 1);
        $align2 = "-";
        $PLEN--;
    }
    elsif ($D->[$t][$p] eq $c) {#当某一个格子里得知是从左边位置得到的，
        $align1 = "-";
        $align2 = substr($pattern, $PLEN, 1);
        $PLEN--;
    }
    else{
    	  $align1 = substr($text, $TLEN, 1);
        $align2 = substr($pattern, $PLEN, 1);
        $TLEN--;
        $PLEN--;
    	}  
  }
  }  
  
print $align1,"\n",$align2;
my $pattern ='TGATCGAATCGATGGATC';
my $text =   'AAAAAAAAAAAAAA';
my $TLEN = length $text;
my $PLEN = length $pattern;
#�����������ݽṹ-����

my $D = [ ];
#��ʼ�����и���
for (my $t=0; $t <= $TLEN ; ++$t) {
$D->[$t][0] = -$t;
}
for (my $p=0; $p <= $PLEN ; ++$p) {
$D->[0][$p] = -$p;

}
#���ÿһһ������λ�õĿտǣ���ѭ��ʵ��
for (my $t=1; $t <= $TLEN ; ++$t) {
for (my $p=1; $p <= $PLEN ; ++$p) {
if (substr($text, $t-1, 1) eq substr($pattern, $p-1, 1)){ $a=$D->[$t-1][$p-1] + 1 } else{$a=$D->[$t-1][$p-1] - 1};
$b=$D->[$t-1][$p] - 1;
$c=$D->[$t][$p-1] - 1;
$D->[$t][$p] =max3($a, $b, $c);
}
}
#���������У�������������������������һ��$TLEN+1��$,PLEN+1����
for (my $p=0; $p <= $PLEN ; ++$p) {
for (my $t=0; $t <= $TLEN ; ++$t) {
print $D->[$t][$p], " ";
}
print "\n";
}
#����ȡ�Դ�ֵ�ĺ���        
sub max3 {
my($i, $j, $k) = @_;
my($tmp);
$tmp = ($i < $j ? $j : $i);
$tmp < $k ? $k : $tmp;
}
#���ܵõ�һ����Ҫ�ľ���
#��һ�����ݣ����ݾ��Ǵ����һ�����ӿ�ʼ���ҳ�һ����ֵ������·�������������ȶ����У�$align1,$align2




my $align1 = "";
my $align2 = "";
for (my $p=$PLEN ; $p >= 0 ; --$p) {
for (my $t=$TLEN; $t >= 0 ; --$t) {
if ($D->[$t][$p] eq $b) {#��ĳһ���������֪�Ǵ��ϱ�λ�õõ��ģ�
        $align1 = substr($text, $TLEN, 1);
        $align2 = "-";
        $PLEN--;
    }
    elsif ($D->[$t][$p] eq $c) {#��ĳһ���������֪�Ǵ����λ�õõ��ģ�
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
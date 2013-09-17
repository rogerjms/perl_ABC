my $pattern =  'TGATCGAATCGATGGATC';
my $text ='ATCGATCGATCGATCGATCG';
my $TLEN = length $text;
my $PLEN = length $pattern;
my $D = [ ];
for (my $t=0; $t <= $TLEN ; ++$t) {
$D->[$t][0] = -$t;
}
for (my $p=0; $p <= $PLEN ; ++$p) {
$D->[0][$p] = -$p;

}
for (my $t=1; $t <= $TLEN ; ++$t) {
for (my $p=1; $p <= $PLEN ; ++$p) {
$D->[$t][$p] =max3(

substr($text, $t-1, 1) eq substr($pattern, $p-1, 1)
? $D->[$t-1][$p-1] + 1 
: $D->[$t-1][$p-1] - 1,
$D->[$t-1][$p] - 1,
$D->[$t][$p-1] - 1
)
}
}
for (my $p=0; $p <= $PLEN ; ++$p) {
for (my $t=0; $t <= $TLEN ; ++$t) {
print $D->[$t][$p], " ";
}
print "\n";
}
sub max3 {
my($i, $j, $k) = @_;
my($tmp);
$tmp = ($i < $j ? $j : $i);
$tmp < $k ? $k : $tmp;
}





my $align1 = "";#初始化
my $align2 = "";
open(HTML,">>nw.htm");
print HTML "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=GBK\" /><table border=\"2\"><tr><th> </th><th>S1</th><th>".join("</th><th>",split(//,$seq1))."</th></tr>";
my $string="hello,world!";
$a=substr($string,0,5);
substr($string,0,5)="goodbye";#等价于传统的四个参数substr(#string,0,5,"goodbye")??直到她的返回值吗？
#个数完全没必要一点要相等
$a=substr($string,0,5);#放的位置不同效果完全变了
print $a,"\n";
print $string;
substr($string,-20)=~s/fred/danel/g;#嘛意思
print "\n",$string;
my $string="hello,world!";
$a=substr($string,0,5);
substr($string,0,5)="goodbye";#�ȼ��ڴ�ͳ���ĸ�����substr(#string,0,5,"goodbye")??ֱ�����ķ���ֵ��
#������ȫû��Ҫһ��Ҫ���
$a=substr($string,0,5);#�ŵ�λ�ò�ͬЧ����ȫ����
print $a,"\n";
print $string;
substr($string,-20)=~s/fred/danel/g;#����˼
print "\n",$string;
#һ��ı���Perl����
sub add{  
my($a,$b)=@_;  
$$a++;  
$$b++;  
}  
$a=1;  
$b=2;  
add(\$a,\$b);  
print"$a,$b\n";  
#�������perl ����
sub add1{  
	my@result;  
	my($ref1,$ref2)=@_;  
	while(@$ref1&&@$ref2){  
		unshift@result,pop(@{$ref1})+pop(@{$ref2});  #unshift is opposite to push
		}  return@result;  }   
		@a=(1,2,3);  
		@b=(1,2,3);  
		@ret=add1(\@a,\@b);  
		print"@ret\n"; 
	  #�Թ�ϣ���Perl������ �������� ��֮ͬ����
	  %hash=(abc=>123,def=>456);
 $ref=\%hash;
 print"%$ref\n";#�����%HASH(0x83179b4)����Ͳ�����
 print"$$ref{abc}\n";#�����123
# ���Perl���� �������Perl���ý���ѱ��е����һ��ֵ��Ϊ�����ı���
$a=1;
$b=10;
$c=100;
$reflist=\($a,$b,$c);
print$$reflist."\n";#���$c��ֵ��
$reflist=\(1,2...30,40);
print$$reflist."\n";#���40
# �������������Perl���� 
$arrayreference=[1,2,3];  
print$$arrayreference[0];#���1  
print$arrayreference->[0];#���1�����ü�ͷ��Perl���� 
@a=(1,2,3);
$s=pop@{[@a]};#perl��Ϊ��������@�����������ڼ���ʱ�����������������Perl���á�
print"@a\n";#���123 not chang@a 



	  
# ����������ϣ���Perl����
$hashreference={Name=>Sylvster,Gender=>male};
print $hashreference->{"Name"};#���Sylvester���ȼ��ڣ�$$hashreference{Name}�����Ҫ��each������ϣ����
while(($key,$value)=each(%$hashreference)){
	print "\n",$key ,"=>",$value,"\n";}
	#��������ϣ��ģ���û��Զ�����������
	
	sub Point{
my ($x,$y)=@_;
return{
x=>$x,
y=>$y
};
}print  % {Point(1,2)};# ��̫����
	$point=Point(10,20);
print"x:$point->{x},y:$point->{y}\n";#�����ڶ���
# ��perl�д������÷�Χ�հ�
sub Point1{  
	my$string1=shift;  
	return sub {  
		my$string2=shift;  
		print("$string1,$string2\n");  
		};  
		}  
		$point=Point1("Hello");  
		&$point("World");  
		&$point("guys");  #ţ





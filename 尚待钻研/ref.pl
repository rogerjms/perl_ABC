#一般的标量Perl引用
sub add{  
my($a,$b)=@_;  
$$a++;  
$$b++;  
}  
$a=1;  
$b=2;  
add(\$a,\$b);  
print"$a,$b\n";  
#数组变量perl 引用
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
	  #对哈希表的Perl引用与 数组引用 异同之处：
	  %hash=(abc=>123,def=>456);
 $ref=\%hash;
 print"%$ref\n";#输出：%HASH(0x83179b4)数组就不这样
 print"$$ref{abc}\n";#输出：123
# 表的Perl引用 创建表的Perl引用将会把表中的最后一个值作为产生的标量
$a=1;
$b=10;
$c=100;
$reflist=\($a,$b,$c);
print$$reflist."\n";#输出$c的值。
$reflist=\(1,2...30,40);
print$$reflist."\n";#输出40
# 创建匿名数组的Perl引用 
$arrayreference=[1,2,3];  
print$$arrayreference[0];#输出1  
print$arrayreference->[0];#输出1可以用箭头解Perl引用 
@a=(1,2,3);
$s=pop@{[@a]};#perl作为快来计算@｛｝，而快在计算时将创建对匿名数组的Perl引用。
print"@a\n";#输出123 not chang@a 



	  
# 创建匿名哈希表的Perl引用
$hashreference={Name=>Sylvster,Gender=>male};
print $hashreference->{"Name"};#输出Sylvester，等价于：$$hashreference{Name}如果需要用each遍历哈希表，则：
while(($key,$value)=each(%$hashreference)){
	print "\n",$key ,"=>",$value,"\n";}
	#用匿名哈希表模仿用户自定义数据类型
	
	sub Point{
my ($x,$y)=@_;
return{
x=>$x,
y=>$y
};
}print  % {Point(1,2)};# 不太明白
	$point=Point(10,20);
print"x:$point->{x},y:$point->{y}\n";#类似于对象
# 在perl中创建永久范围闭包
sub Point1{  
	my$string1=shift;  
	return sub {  
		my$string2=shift;  
		print("$string1,$string2\n");  
		};  
		}  
		$point=Point1("Hello");  
		&$point("World");  
		&$point("guys");  #牛





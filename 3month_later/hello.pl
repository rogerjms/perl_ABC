#!/usr/bin/perl -w
print "hello,world!\n";#function
#scalar
$guixiaoke="��С��";
print "$guixiaoke";
if("0"){print "\n I am back!"}
#$food = <STDIN>;
#$betty = chomp $food;#ע��chomp�ķ���ֵ
#print $betty;
$count=0;
while($count<10){
	$count+=2;
	print "count is now $count\n";
	}#��ѭ��������Ū����
#perl ����Ƕ���� �������� ������ֵ
#��Ԫ������
$fred[0]="yabba";
$fred[1]="dabba";
$fred[2]="doo";
#print @fred;#different styles of array
@rocks=qw/flintstone slate rubble/;
#print "quartz @rocks limestone\n";
@sp=splice (@rocks ,2);
$s=splice (@rocks ,1);
print "@rocks";
print "\n@sp";
print "$s";
$a="guixiaoke,love";
$b=($a=~tr/oi//);
print "\n$b";
#!/usr/bin/perl
# Loading an Hash from a file.
open(NAMES,"emp.names") || die "Can't open emp.names: $!\n";
while(<NAMES>){
	( $num, $name )= split(' ', $_, 2);
	$realid{$num} = $name; #����ô�Ͱ����������ϵ�������ϵ�����أ���ţ�� ����ѽ��
}
close NAMES;

while(1){
	print "Please choose a number from the list of names? ";
	chomp($num=<STDIN>);
	last unless $num; 
	print $realid{$num},"\n";
}


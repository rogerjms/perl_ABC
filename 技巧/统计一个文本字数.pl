while(<>){
foreach(split){
$total++;
next if/\W/;
$valid++;#���Ǿ���
$count{$_}++;
}

}
print "total things = $total,valid words=$valid\n";
foreach $word(sort keys %count){
	print "$word was seen $count{$word} times.\n";}#ͳ���ظ���������ͳ���������ǰ��ôû�����أ�
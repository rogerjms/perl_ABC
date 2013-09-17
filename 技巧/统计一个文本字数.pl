while(<>){
foreach(split){
$total++;
next if/\W/;
$valid++;#真是精妙
$count{$_}++;
}

}
print "total things = $total,valid words=$valid\n";
foreach $word(sort keys %count){
	print "$word was seen $count{$word} times.\n";}#统计重复个数在这就出现啦，以前怎么没发现呢？
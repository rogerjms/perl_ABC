# 2011-5-5

open(IN,"cog_list");
open(RS,">freq_v4_hash");

while($seq = <IN>){
	chomp($seq);
	$hash{$seq}++;
}

foreach $key(keys(%hash)) {
   print RS "$key\t$hash{$key}\n";
}
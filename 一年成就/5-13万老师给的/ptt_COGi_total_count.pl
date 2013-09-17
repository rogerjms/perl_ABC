# 2011-5-5

open(RS,">ptt_COGi_total_count");
@ptt = glob('330_ptt/*');

for ($n = 0; $n <= @ptt; $n++){
	open (IN, "$ptt[$n]");
	while($seq = <IN>){
		chomp($seq);
		@cog = split("\t",$seq);
		if($cog[7] =~ /COG/){
			$cog{$cog[7]}++;
		}
	}
}

foreach $key(keys(%cog)) {
   print RS "$key\t$cog{$key}\n";
}
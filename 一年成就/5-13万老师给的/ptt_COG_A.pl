# 2011-5-4

open (RS, ">ptt_COG_A");

@ptt = glob('330_ptt/*');	

for ($n = 0; $n <= @ptt; $n++){

	open (IN, "$ptt[$n]");
	print RS "$ptt[$n]\t";
	
	while($seq = <IN>){
		
		chomp($seq);
		
		if($seq =~ /COG4166E/){
			@a = split("\t",$seq);
			push(@coga,$a[5]);
		}
	}
	
	$i = @coga;
	print RS "$i\t@coga\n";
	$i = 0;
	@coga = ();
}


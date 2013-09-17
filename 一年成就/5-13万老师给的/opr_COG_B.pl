# 2011-5-4

open (RS, ">opr_COG_B");

@opr = glob('330_opr_COG_anno/*');	

for ($n = 0; $n <= @opr; $n++){

	open (IN, "$opr[$n]");
	print RS "$opr[$n]\t";
	
	while($seq = <IN>){
		
		chomp($seq);
		
		if($seq =~ /COG0601EP/){
			@a = split("\t",$seq);
			push(@coga,$a[0]);
		}
	}
	
	$i = @coga;
	print RS "$i\t@coga\n";
	$i = 0;
	@coga = ();
}


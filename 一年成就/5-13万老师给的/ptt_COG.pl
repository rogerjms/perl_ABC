# 2011-4-6

open (COG, ">ptt_COG");
@opr = glob('331_ptt/*');	

for ($n = 0; $n <= @opr; $n++){
	open (IN, "$opr[$n]");
	while(<IN>){
		chomp;
		@cog = split("\t",$_);
		print COG "$cog[7]\n";
	}
}

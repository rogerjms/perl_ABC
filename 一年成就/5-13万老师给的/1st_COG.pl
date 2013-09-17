# 2010-5-5

open(IN,"opp_operon");
open(RS,">1st_COG");

while(<IN>){
	
	chomp;
	@a = split("\t",$_);
	
	if($a[3] eq "-"){
		@b = split(" ",$a[2]);
		@b = reverse(@b);
		$cog{$b[0]}++;
	}
	
	else{
		@b = split(" ",$a[2]);
		$cog{$b[0]}++;
	}
}

foreach $key(keys(%cog)){
	print RS "$key\t$cog{$key}\n";
}
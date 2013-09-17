# 2010-5-5

open(IN,"opp_operon");
open(RS,">COG_pairs");

while(<IN>){
	
	chomp;
	@a = split("\t",$_);
	
	if($a[3] eq "-"){
		@b = split(" ",$a[2]);
		@b = reverse(@b);
		for($i=0;$i<=@b-2;$i++){
			$pair = "$b[$i]"." $b[$i+1]";
			$pair{$pair}++;
		}
	}
	
	else{
		@b = split(" ",$a[2]);
		for($j=0;$j<=@b-2;$j++){
			$pair = "$b[$j]"." $b[$j+1]";
			$pair{$pair}++;
		}
	}
}

foreach $key(keys(%pair)){
	print RS "$key\t$pair{$key}\n";
}
open(IN1,"opp_operon");
open(IN2,"NC_000854.ptt");
open(RS,">NC_000854.opp");

while($seq1=<IN1>){
	
	chomp($seq1);
	@a = split("\t",$seq1);
	seek(IN2,0,0);
	
	while($seq2=<IN2>){
		chomp($seq2);
		@b = split("\t",$seq2);
		if($b[7] eq $a[1]){
			print RS "$seq1\t$b[5]\n";
		}
		
	}	
	
}
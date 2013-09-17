# 2011-5-5

open(TOT,"ptt_COGi_total_count");
open(FST,"1st_COG");
open(PIR,"COG_pairs");
open(OPR,"opp_operon");
open(RS,">operon_entropy");

sub entropy;

while($total = <TOT>){
	chomp($total);
	@total = split("\t",$total);
	$total{$total[0]} = $total[1];
}

while($fst_COG = <FST>){
	chomp($fst_COG);
	@fst_COG = split("\t",$fst_COG);
	$fst_COG{$fst_COG[0]} = $fst_COG[1];
}

while($pair = <PIR>){
	chomp($pair);
	@pair = split("\t",$pair);
	$pair[0] =~ s/ //;
	$pair[0] =~ s/-/H/;
	$pair{$pair[0]} = $pair[1];
}

while($opr = <OPR>){
	chomp($opr);
	@opr = split("\t",$opr);
	if($opr[3] eq "-"){
		@a = split(" ",$opr[2]);
		@a = reverse(@a);
		$entropy = entropy(@a);
	}
	else{
		@a = split(" ",$opr[2]);
		$entropy = entropy(@a);
	}
	print RS "$opr[0]\t$opr[1]\t$opr[3]\t$entropy\t$opr[2]\n";
}

sub entropy{
	
	my (@opr) = @_;
	my $entropy = 0;
	
	my $fst_COG = $opr[0];
	$fst_COG =~ s/-/H/;
	
#	my $prob_1st_COG = $fst_COG{$opr[0]}/$total{$opr[0]};
	
#	my $entropy = $prob_1st_COG * log($prob_1st_COG)/log(2);
	
#	for(my $i=0;$i<=@opr-2;$i++){
#		my $pair = "$opr[$i]"."$opr[$i+1]";
#		$pair =~ s/ //;
#		$pair =~ s/-/H/;
#		my $prob_pair = $pair{$pair}/$total{$opr[$i]};
#		my $pair_entropy = $prob_pair * log($prob_pair)/log(2);
#		$entropy = $entropy + $pair_entropy;
#	}
	
#	$entropy = -($entropy);
#	return ($entropy);
	return ($fst_COG);
}
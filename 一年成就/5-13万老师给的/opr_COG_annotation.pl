# 2011-5-4

open(GL,"330_genome_list");

while($gl = <GL>){

	chomp($gl);
	$fl_opr = "$gl".".opr";
	$fl_ptt = "$gl".".ptt";
	$fl_opra = "$gl".".opra";
	
	open(PTT,"330_ptt/$fl_ptt");
	<PTT>;<PTT>;<PTT>;
	
	while($ptt = <PTT>){
		chomp($ptt);
		@ptt = split("\t",$ptt);
		$cog{$ptt[5]} = $ptt[7];
		$des{$ptt[5]} = $ptt[8];
	}
	
	open(OPR,"330_opr/$fl_opr");
	<OPR>;
	open(OPRA,">330_opr_COG_anno/$fl_opra");
	
	while($opr = <OPR>){
		
		chomp($opr);
		@opr = split("\t",$opr);
		print OPRA "$opr[0]\t$opr[1]\t$opr[2]\t$opr[3]\t$opr[4]\t$opr[5]\t$opr[6]\t$cog{$opr[2]}\t$des{$opr[2]}\n";
	}
}


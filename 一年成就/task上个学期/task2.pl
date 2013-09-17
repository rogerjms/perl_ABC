open(MIT,"mit.sequence.gb.txt");
@A=<MIT>;


foreach my $cds (@A){
	if($cds=~/^ {5}CDS.*\n(^ {21}\S.*\n)*/gs){
		my $cds=$&;
	 print $cds;}
	
	
	}

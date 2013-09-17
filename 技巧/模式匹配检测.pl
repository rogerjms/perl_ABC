while(<>){
	chomp;
	if(/\d+/){
		print "matched:|$`<$&>$'|\n";
		}else{
			
			print "na matches!\n";}
			}
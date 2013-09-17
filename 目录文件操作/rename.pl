rename "xiaoke","bigke";

foreach my $file(glob "*.old"){
	my $newfile=$file;
	$newfile=~s/\.old$/.new/;
	if(-e $newfile){
		warn "i cannot rwname it!!!\n";
	}elsif(rename $file,$newfile){
		
		
	}else{warn "failed!!!\n";}
	
	
	
	}
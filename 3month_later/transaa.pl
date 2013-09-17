open AA,"NC_000913.faa";
while(<AA>){
	s/>/>\n/;
	print;
	
	}
open AA,aa;
open  CC,cc;
open DD,">dd";
open BB,">bb";
while(<AA>){
	if(/^>/){s/>/>\n/;print BB;}else{print BB;}
	
	
	}
	while(<CC>){
	if(/^>/){s/>/>\n/;print DD;}else{print DD;}
	
	
	}
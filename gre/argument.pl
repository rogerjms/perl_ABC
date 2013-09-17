open GRE,">1.txt";
@gre=<GRE>;
print @gre;
foreach $gre (@gre){
	if ($gre=~/^guixiaoke/){
	 for($i=0;$i<173;$i++){
	 $gre=$i."guixiaoke";
	   } 
	}
}
	
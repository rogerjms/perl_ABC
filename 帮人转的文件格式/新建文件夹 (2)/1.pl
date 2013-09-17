open RAN,"random.txt";
chomp (@ran=<RAN>);
for($i=0;$i<@ran;$i=$i+2){
	 $c=substr($ran[$i],0,29);
	 
	 $j=$i+1;
	 $hash{$c}=$ran[$j];
	 #print $c;
	 #print $ran[$j];
	 #last;
	 }
	 	#print keys %hash;
	 	#print $ran[0];
 #print $hash{"1_396_frame1_minus|Arabidopsis"};
 open SE,"se";
 open RE,">re";
 while(<SE>){
 	 chomp;
 	 print RE $_,"\t",$hash{"$_"},"\n";
   #print $_,"\n";
 
 }
open SEQ,"seq";
 open SE,">se";
 select SE;
 while(<SEQ>){
 	 chomp;
 	 #$b="$_\t$hash{$_}";
 	 $_=substr($_,0,29);
 	 #print $_,"\t",$hash{"1_418_frame1_minus|Arabidopsis"};
   print $_,"\n";
 }
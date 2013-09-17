while($j<10){
   $a=int rand(10);
   #push(@a,$a);
   $hash{$a}++;
   if($hash{$a}!=1){delete $hash{$a};}
   $j++;
}
foreach $key(keys(%hash)) {
   print "$key\t$hash{$key}\n";
}
 	

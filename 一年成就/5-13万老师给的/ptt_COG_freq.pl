# 2010-11-1

$filename = "ptt_COG";

open (input, "$filename");
open (output, ">$filename.freq");

@a = <input>;
@unique = grep {$count{$_}++<1} @a; 

foreach $a(@unique){
	
	chomp($a);
	$n = 0;
	
	foreach $b(@a){
		
		chomp($b);
		if($b eq $a){
			
			$n++;			
			
		}		
		
	}
	
	print output "$a\t$n\n";	
	
}

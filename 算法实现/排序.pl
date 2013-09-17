use strict;
my @yuanshi=qw(1 21 4 -8 5 19 7 3);
for(my $i=0;$i<scalar @yuanshi;$i++){
	  for(my $j=$i+1;$j<scalar @yuanshi;$j++){
	  	if($yuanshi[$i]>$yuanshi[$j]){
	  		my $temp;
	  		$temp=$yuanshi[$i];
	  		$yuanshi[$i]=$yuanshi[$j];
	  		$yuanshi[$j]=$temp;
	  		}
	  	
	  	
	  	}
	
	
	
	}
print "@yuanshi\n";
print $yuanshi[$#yuanshi];
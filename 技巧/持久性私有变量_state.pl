use 5.010;
run_number(5,6);
run_number(1..3);
run_number(4);
sub run_number{
	state $sum = 0;
	state @numbers;#关于state的用法
	
	foreach my $number(@_){
		push @numbers,$number;
		$sum+=$number;
		
		}
	
	print "The sum of(@numbers) is $sum";
	
	
	
	}
#!/usr/bin/perl
$num=10;
srand(time|$$); # Seed rand with the time or�ed to 
                # the pid of this process
while($num){    # srand not necessary in versions 5.004 and above
	$lotto = int(rand(10)) + 1;  
                 # Returns a random number between 1 and 10
	print "The random number is $lotto\n";
	sleep 3;
	$num--;
}


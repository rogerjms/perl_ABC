#!/usr/bin/perl
$x=5; $y=0;
$y=++$x;     # Add one to $x first; then assign to $y
print "Pre-increment:\n";
print "y is $y\n";
print "x is $x\n";
print  "-----------------------\n";
$x=5;
$y=0;
print "Post-increment:\n";
$y=$x++;     # Assign value in $x to $y; then add one to $x
print "y is $y\n";
print "x is $x\n";

#!/usr/bin/perl
# Convert a number to binary
while (1) {
	$mask = 0x80000000;      # 32-bit machine
	printf("Enter an unsigned integer: ");
	chomp($num=<STDIN>);
	printf("Binary of %x hex is: ", $num);
	for ($j = 0; $j < 32; $j++) {
		$bit = ($mask & $num) ? 1 : 0;
		printf("%d", $bit);
		if ($j == 15){
		    printf("--");
		}
	$mask /=2;              # $mask >>= 1;  not portable
	}
	printf("\n");
}


#!/bin/perl
# Program to demonstrate a pointer to a two-dimensional array. 
my $matrix = [
			     [ 0, 2, 4 ],
			     [ 4, 1, 32 ],
			     [ 12, 15, 17 ]
			    ] ;
	
print "Row 3 column 2 is $matrix->[2]->[1].\n";

print "De-referencing with two loops.\n";
for($x=0;$x<3;$x++){
	for($y=0;$y<3;$y++){
		print "$matrix->[$x]->[$y] ";
	}
	print "\n\n";
}
print "\n";
print "De-refencing with one loop.\n";
for($i = 0; $i < 3; $i++){
	print "@{$matrix->[$i]}", "\n\n";
}
$p=\$matrix;     # Reference to a reference
print "De-referencing a reference to reference.\n";
print ${$p}->[1][2], "\n";

#!/usr/bin/perl -w
use strict;

my $a;
$a=make_random_AA(100);
open (AA,">seq.txt")or die "cannot do it\n";
print AA $a;
sub make_random_AA {
# Collect arguments, declare variables
my($length) = @_;
my $seq;
for (my $i=0 ; $i < $length ; ++$i) {
$seq .= randomamino( );
}
return $seq;
}
# We also need to include the previous subroutine
# randomnucleotide.
# Here it is again for completeness.
# randomnucleotide
#
# Select at random one of the four nucleotides
#
# WARNING: make sure you call srand to seed the
# random number generator before you call this function.
sub randomamino {
my(@aa) =qw(A C D E F G H I K L M N P Q R S T V W Y );
# scalar returns the size of an array.
# The elements of the array are numbered 0 to size-1
return randomelement(@aa);
}
# randomelement
#
# randomly select an element from an array
#
# WARNING: make sure you call srand to seed the
# random number generator before you call this function.
sub randomelement {
my(@array) = @_;
return $array[rand @array];
}



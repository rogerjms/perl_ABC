sub gifts;     # Forward declaration
$num = 5;
$junk = "xxx";
@toys = qw/Budlightyear Woody Thomas/ ;
gifts( \$num, \@toys, $junk );
sub gifts {
	my( $n, $t, $j) = @_;
	print "\$n is a reference.\n" if ref($n);
  	print "\$t is a reference.\n" if ref($t);
	print "\$j is a not a reference.\n" if ref($j);
	printf "\$n is a reference to a %s.\n", ref($n);
	printf "\$t is a reference to an %s.\n", ref($t);
}


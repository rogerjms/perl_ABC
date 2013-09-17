use strict;
use warnings;
my $a;
$a=make_random_dna(10);
print $a;
sub make_random_dna{
	my ($length)=@_;# º”≤ªº”¿®∫≈£ø  
	my $dna; 
   for(my $i=0;$i<$length;++$i){
	$dna .= randomnuclotide( );
}return $dna;
}
	#print $dna;
	sub randomnuclotide{
		my (@nuclotide)=('A', 'C', 'G', 'T');
		return randomelement(@nuclotide);
		}
	 sub randomelement{
		my (@array)=@_;
		return $array[int rand@array];
		}
$a=make_random_DNA(10);
print $a;

sub make_random_DNA {
	 ($a)=@_;
	 for($j=0;$j<$a;$j++){
	 
   
    
		for (my $i=0 ; $i < int rand(100)  ; ++$i) {
       $dna .= randomnucleotide(  );
    }
		$ddd.=$dna
}
 return $ddd;
}
sub randomnucleotide {

    my(@nucleotides) = ('A', 'C', 'G', 'T');
    return randomelement(@nucleotides);
}
sub randomelement {
     my(@array) = @_;
     return $array[rand @array];
   }
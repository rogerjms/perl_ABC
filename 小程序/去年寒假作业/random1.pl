$a=<STDIN>;
$seq=make_random_DNA($a);
open DNA ,">", sequence;
print DNA  $seq;

sub make_random_DNA {

    # Collect arguments, declare variables
    my($length) = @_;

    my $dna;

    for (my $i=0 ; $i < $length ; ++$i) {
        $dna .= randomnucleotide(  );
    }

    return $dna;
}
sub randomnucleotide {

    my(@nucleotides) = ('A', 'C', 'G', 'T');

    # scalar returns the size of an array. 
    # The elements of the array are numbered 0 to size-1
    return randomelement(@nucleotides);
}




sub randomelement {

    my(@array) = @_;

    return $array[rand @array];
}

$input_length=<STDIN>;
$seq=make_random_DNA($a);

open DNA ,seq.txt
print DNA  $seq;
sub make_random_DNA {

    # Collect arguments, declare variables
    my(@lengths) = @_;#存放随机输入的长度

    my $dna;
    foreach (@lengths){
    for (my $i=0 ; $i < length $_ ; ++$i) {
        $dna .= randomnucleotide(  );
    	}

    return $dna;
  }
  }
sub randomnucleotide {

    my(@nucleotides) = ('A', 'C', 'G', 'T');
    return randomelement(@nucleotides);
    sub randomelement {

    my(@array) = @_;

    return $array[rand @array];
}
}
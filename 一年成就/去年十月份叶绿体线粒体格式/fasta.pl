
open(FASTA,"P23895.fasta")or die "can not open it!";
my @fasta=<FASTA>;
my $seq=fasta_aa(@fasta);
open(AA,">aa");
my $num=<STDIN>;
for(my $i=0;$i<$num;++$i){
$a=substitute($seq);
print AA "$a\n";}

sub substitute {
my($seq) = @_;
my(@aa) =qw(A C D E F G H I K L M N P Q R S T V W Y );
 $position = randomposition($seq);
 $newaa = randomaa(@aa);
do {
$newaa = randomaa(@aa);
  }until ( $newaa ne substr($seq, $position,1) );
 $postionaa=substr($seq,$position,1,$newaa);
return $seq;
}
sub randomposition {
my($string) = @_;
return int rand length $string;
}
sub randomaa{
		my (@aa)=qw(A C D E F G H I K L M N P Q R S T V W Y );
		return randomelement(@aa);
		}
	 sub randomelement{
		my (@array)=@_;
		return $array[int rand@array];
		}
sub fasta_aa {                                
                                                                      
    my(@fasta) = @_;                                                                     
    my $sequence = '';                                                
    foreach my $line (@fasta) {                             
     if ($line =~ /^\s*$/) {                                       
            next;                                                                                     
        } elsif($line =~ /^\s*#/) {                                   
            next;                                                                                  
        } elsif($line =~ /^>/) {                                      
            next;                                                                              
        } else {                                                      
            $sequence .= $line;                                       
        }                                                             
    }  
       $sequence =~ s/\s//g;

    return $sequence;
}                                                             
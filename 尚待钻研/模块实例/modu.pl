use strict;
use warnings;
use Geneticcode;
use SequenceIO;
# Initialize variables
my @file_data = ( );
my $dna = '';
my $revcom = '';
my $protein = '';
# Read in the contents of the file "sample.dna"
@file_data = SequenceIO::get_file_data("sample.dna");
# Extract the sequence data from the contents of the file "sample.dna"
$dna = SequenceIO::extract_sequence_from_fasta_data(@file_data);#¿ÉÏ§Ãû×ÖÌ«³¤À²£¡£¡
# Translate the DNA to protein in one of the six reading frames
# and print the protein in lines 70 characters long
print "\n -------Reading Frame 1--------\n\n";
$protein = Geneticcode::translate_frame($dna, 1);
SequenceIO::print_sequence($protein, 70);
exit;
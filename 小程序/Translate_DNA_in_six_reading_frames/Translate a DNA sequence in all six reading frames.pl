use strict;
use warnings;
use Translate_DNA_in_six_reading_frames;

# Initialize variables
my @file_data = (  );
my $dna = '';
my $revcom = '';
my $protein = '';

# Read in the contents of the file "sample.dna"
@file_data = get_file_data("NC_009925.fna");

# Extract the sequence data from the contents of the file "sample.dna"
$dna = extract_sequence_from_fasta_data(@file_data);

# Translate the DNA to protein in six reading frames
#   and print the protein in lines 70 characters long
print "\n -------Reading Frame 1--------\n\n";
$protein = translate_frame($dna, 1);
print_sequence($protein, 70);

print "\n -------Reading Frame 2--------\n\n";
$protein = translate_frame($dna, 2);
print_sequence($protein, 70);

print "\n -------Reading Frame 3--------\n\n";
$protein = translate_frame($dna, 3);
print_sequence($protein, 70);

# Calculate reverse complement
$revcom = revcom($dna);

print "\n -------Reading Frame 4--------\n\n";
$protein = translate_frame($revcom, 1);
print_sequence($protein, 70);

print "\n -------Reading Frame 5--------\n\n";
$protein = translate_frame($revcom, 2);
print_sequence($protein, 70);

print "\n -------Reading Frame 6--------\n\n";
$protein = translate_frame($revcom, 3);
print_sequence($protein, 70);

exit;

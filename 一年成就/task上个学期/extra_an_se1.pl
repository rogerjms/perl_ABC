#!/usr/bin/perl
use strict;
use warnings;
use BeginPerlBioinfo; 
my @annotation = ( );
my $sequence = '';
my $filename = 'record.gb';
parse1(\@annotation, \$sequence, $filename);
print @annotation;
print_sequence($sequence, 50);
exit;
sub parse1 {
my($annotation, $dna, $filename) = @_;
my $in_sequence= 0;
my @GenBankFile = ( );
@GenBankFile = get_file_data($filename);
foreach my $line (@GenBankFile) {
if( $line =~ /^\/\/\n/ ) { 
 last;                     
} elsif( $in_sequence) { 
$$dna .= $line; 
} elsif ( $line =~ /^ORIGIN/ ) { 
$in_sequence = 1; 
} else{ 
push( @$annotation, $line); 
}
}
$$dna =~ s/[\s0-9]//g;
}
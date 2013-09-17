use BeginPerlBioinfo;
$linenumber = 0;
my $filename = 'record.gb';
@GenBankFile = get_file_data($filename);
foreach my $line (@GenBankFile) {
if ( $line =~ m!^//\n! ) { # end-of-record // line
$end = $linenumber;
last;
} elsif ( $line =~ /^ORIGIN/ ) { # end annotation, begin sequence
$origin = $linenumber;
}
$linenumber++;
}
# extract annotation and sequence with "array splice"
@annotation = @GenBankFile[0..($origin-1)];
@sequence = @GenBankFile[($origin+1)..($end-1)];
print "@sequence";
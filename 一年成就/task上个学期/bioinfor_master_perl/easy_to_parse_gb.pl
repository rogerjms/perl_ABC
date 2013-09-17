my @a;
open(AA,"record.gb");
@a=<AA>;
$linenumber = 0;
foreach my $line (@a) {
if ( $line =~ /^\/\/\n/ ) { 
$end = $linenumber;
last;
} elsif ( $line =~ /^ORIGIN/ ) { 
$origin = $linenumber;
}
$linenumber++;
}
@annotation = @a[0..($origin-1)];
@sequence = @a[($origin+1)..($end-1)];
print @annotation;
print @sequence;

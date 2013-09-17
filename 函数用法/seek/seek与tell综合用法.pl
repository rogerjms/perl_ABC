#!/usr/bin/perl
# Example using the tell function
open(FH,"db") || die "Can't open: $!\n";
while ($line=<FH>) {      # Loop through the whole file
	chomp($line);
	if ($line =~ /^Lori/) {
		$currentpos=tell;
		print "The current byte position is $currentpos.\n";
		print "$line\n\n";
  	}
}
seek(FH,$currentpos,0);   # Start at the beginning of the file
@lines=(<FH>);
print @lines;

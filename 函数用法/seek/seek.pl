# Example using the seek function
open(FH,"db") or die "Can't open: $!\n";
while($line=<FH>){       # Loop through the whole file
	if ($line =~ /Lori/) { print "--$line--\n";}
}
seek(FH,0,0);            # Start at the beginning of the file
while(<FH>) {
	print if /Steve/;
}


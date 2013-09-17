# Example using the seek function
open(FH,"db") or die "Can't open: $!\n";
while($line=<FH>){       # Loop through the whole file
	if ($line =~ /Lori/) { print "--$line--\n";}
}
seek(FH,0,0);            # Start at the beginning of the file注释与不注释很不一样
#close FH;
#open(FH,"db") or die "Can't open: $!\n";
while(<FH>) {
	print if /Steve/;
}

open(FH, "db") or die "Can't open datebook: $!\n";
seek(FH,-13,2) or die;
while(<FH>){
	print;
}
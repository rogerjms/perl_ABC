open ( DB, "emp.names") || die "Can't open emp.names: $!";
while(<DB>){
	print if (/Norma/ .. eof);      # .. is the range operator
}


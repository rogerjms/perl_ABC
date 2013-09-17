#!/bin/perl
open(README, "/etc/passwd") || die;

&readit(\*README);     # Reference to a typeglob

sub readit {
	my ($passwd)=@_;
	print "\$passwd is a $passwd.\n";
	while(<$passwd>){
		print;
	}  
}

seek(README,0,0) || die "seek: $!\n";   
                  # Reset back to begining of job

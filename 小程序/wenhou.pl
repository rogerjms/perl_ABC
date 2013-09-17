#!/usr/bin/perl
print "Are you o.k.? ";
chomp($answer=<STDIN>);
until ($answer eq "yes"){
	sleep(5);
	print "Are you o.k. yet? ";
	chomp($answer=<STDIN>);
}
print "Glad to hear it!\n";


#!/usr/bin/perl
# Program to redirect STDOUT from filter to a UNIX file
$| = 1;           # Flush buffers
$tmpfile = "temp";
open(DB, "data") || die qq /Can\'t open "data": $!\n/;   
# Open DB for reading
open(SAVED, ">&STDOUT") || die "$!\n";  # Save stdout
open(STDOUT, ">$tmpfile" ) || die "Can't open: $!\n"; 
open(SORT, "| sort +1") || die;         # Open output filter
while(<DB>){
	print SORT;   # Output is first sorted and then sent to temp.
}
close SORT;
open(STDOUT, ">&SAVED") || die "Can't open";
print "Here we are printing to the screen again.\n";  
                  # This output will go to the screen
rename("temp","data");

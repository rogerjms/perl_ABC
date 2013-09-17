#!/usr/bin/perl
die "$0 requires an argument.\n" if $#ARGV < 0;  
	                      # Must have at least one argument
	print "@ARGV\n";      # Print all arguments
	print "$ARGV[0]\n";   # Print first argument
	print "$ARGV[1]\n";   # Print second argument
	print "There are ", $#ARGV + 1," arguments.\n";  
                         # $#ARGV is the last subscript
	print "$ARGV[$#ARGV] is the last one.\n";  # Print last arg

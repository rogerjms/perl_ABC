#!/usr/bin/perl -i.bak
# Scriptname: inplace

 while(<ARGV>){   # Open ARGV for reading
	tr/a-z/A-Z/;
	print;    # Output goes to file currently being read in-place
  close ARGV if eof;
}

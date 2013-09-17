#!/usr/bin/perl
use strict;
use warnings;
use vars '$AUTOLOAD';
print "I started the program\n";
report_protein_function("one", "two");
print "I got to the end of the program\n";
sub AUTOLOAD {
print "AUTOLOAD is set to $AUTOLOAD\n";
print "with arguments ", "@_\n";
}
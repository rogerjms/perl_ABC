#!/usr/bin/perl -w
use strict;
#programmed by guixiaoke at
#Tue Dec 27 09:30:52 2011



















###########################################################
#####################
# Subroutines
###########################################################
#####################
sub open_file{
	my ($name)=@_;
	my $fh;
unless(open($fh,$name)){
print "i can not open $name!\n";
  exit;}
  return $fh;
  }
exit;
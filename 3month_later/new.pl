#!/usr/bin/perl -w
use strict;
#programmed by guixiaoke at
#Mon Apr  2 14:10:41 2012



















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
sub main
{
    message("This is the template.pl exercise file from Perl 5 Essential Training.");
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print("$0: $e\n");
    exit 0;
}
exit;
#!/bin/perl
# Program to demonstrate BEGIN and END subroutines
chdir("/stuff") || die "Can't cd: $!\n";
BEGIN{ print "Welcome to my Program.\n"};
END{ print "Bailing out somewhere near line ",__LINE__, 
                                            " So long.\n"};

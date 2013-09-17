#!usr/bin/perl -w
use strict;
my @a;
open(AA,"2");
@a=<AA>;
for (@a){
	$_=~s/\d+//g;
	
	}
chomp(@a);
print @a;
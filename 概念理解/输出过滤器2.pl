#!/usr/bin/perl
open(FOO, "| sort  +1| tr '[a-z]' '[A-Z]'"); # Open output filter
open(DB, "emp.names");       # Open DB for reading
while(<DB>){ print FOO ; }
close FOO;

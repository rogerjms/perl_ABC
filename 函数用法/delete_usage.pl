#!/usr/bin/perl
%employees=(
             "Nightwatchman" => "Joe Blow",
             "Janitor" => "Teddy Plunger",
             "Clerk" => "Sally Olivetti",
               );


$layoff=delete $employees{"Janitor"};
print "We had to let $layoff go.\n";
print "Our remaining staff includes: ";
print "\n";
while(($key, $value)=each(%employees)){
	print "$key: $value\n";
}

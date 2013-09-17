#!/usr/bin/perl
print "What is your name? ";
chomp($name = <STDIN>);  # Program waits for user input from keyboard
print "Welcome, $name, are you ready to learn Perl now? ";
chomp($response = <STDIN>);
$response=lc($response);  # response is converted to lowercase
if($response eq "yes" or $response eq "y"){
     print "Great! Let's get started learning Perl by example.\n";
}
else{
   print "O.K. Try again later.\n";
}
$now = localtime;  # Use a Perl function to get the date and time
print "$name, you ran this script on $now.\n";     


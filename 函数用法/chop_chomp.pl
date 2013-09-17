# Chopping and chomping a list
@line=("red", "green", "orange"); 
chop(@line);   # Chops the last character off each 
               # string in the list
print "@line"; 
@line=( "red", "green", "orange"); 
chomp(@line);  # Chomps the newline off each string in the list
print "@line"; 

#!/usr/bin/perl
@names = qw(Tom Raul Steve Jon);
print "Hello $names[1]\n", if exists $names[1];
print "Out of range!\n", if not exists $names[5];


@colors=("red","green","blue","yellow");
print "@colors\n";
delete $colors[1];
print "@colors\n";
print $colors[1],"\n";
$size=@colors;
print "The size of the array is $size.\n";     

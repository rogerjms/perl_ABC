# Getting a line of input from the keyboard.
print "What is your name?  ";
$name = <STDIN>;
print "What is your father's name? ";
$paname=<>;
print "Hello respected one, $paname";

# Getting rid of the trailing newline. Use chomp instead of chop.
print "Hello there, and what is your name? ";
$name = <STDIN>;
print "$name is a very high class name.\n";
chop($name);   # Removes the last character no matter what it is.
print "$name is a very high class name.\n\n";
chop($name); 
print "$name has been chopped a little too much.\n";
print "What is your age?  ";
chomp($age=<STDIN>); # Removes the last character if 
                     # it is the newline.
chomp($age);         # The last character is not removed 
                     # unless a newline. 
print "For $age, you look so young!\n";




# Reading input in a requested number of bytes
print "Describe your favorite food in 10 bytes or less.\n";
print "If you type less than 10 characters, press Ctrl-d on a line
	by itself.\n";


$number=read(STDIN, $favorite, 10);
print "You just typed: $favorite\n";
print "The number of bytes read was $number.\n";


print "Hello", "world", "\n"; 
print "Hello world\n";
#print Hello, world, "\n";
print STDOUT Hello, world, "\n";

print "The script is called", __FILE__, "and we are on line number ", __LINE__,"\n";
#!/usr/bin/perl
# Program to illustrate printing literals
print "The price is $100.\n";
print "The price is \$100.\n";
print "The price is \$",100, ".\n";
print "The binary number is converted to: ",0b10001,".\n";
print "The octal number is converted to: ",0777,".\n";
print "The hexadecimal number is converted to: ",0xAbcF,".\n";
print "The unformatted number is ", 14.56, ".\n";
$now = localtime(); # A Perl function 
$name = "Ellie"; # A string is assigned to a Perl variable
print "Today is $now, $name.";
print 'Today is $now, $name.';
#!/usr/bin/perl
print "\n","***\tIn double quotes\t***\n";  # Backslash interpretation
print '%%%\t\tIn single quotes\t\t%%%\n'; # All characters are 
                                          # printed as literals
print "\n";

#!/usr/bin/perl
print "\t\tThe \Unumber\E \LIS\E ",0777,".\n";  #good!!!\a
#!/usr/bin/perl
# Scriptname: warnme
use warnings;
print STDOUT "Ellie, what is up?";	
use diagnostics;
print "Hello there";  # Unmatched quote
print "We are on line number ", __LINE__,"\n";
printf("The name is %s and the number is %d\n", "John", 50);
#!/usr/bin/perl
printf "Hello to you and yours %s!\n","Sam McGoo!";
printf("%-15s%-20s\n", "Jack", "Sprat");
printf "The number in decimal is %d\n", 45;
printf "The formatted number is |%10d|\n", 100;
printf "The number printed with leading zeros is |%010d|\n", 5;
printf "Left-justified the number is |%-10d|\n", 100;
printf "The number in octal is %o\n",15;
printf "The number in hexadecimal is %x\n", 15;
printf "The formatted floating point number is |%8.2f|\n", 14.3456;
printf "The floating point number is |%8f|\n", 15;
printf  "The character is %c\n", 65;
$string = sprintf("The name is: %10s\nThe number is: %8.2f\n","Ellie", 33); #format
print "$string";












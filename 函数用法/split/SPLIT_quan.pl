# Many ways to split a scalar to create a list
$string= "Joe Blow:11/12/86:10 Main St.:Boston, MA:02530";
@line=split(":", $string);   # The string delimiter is a colon
print @line,"\n"; 
print "The guy's name is $line[0].\n";
print "The birthday is $line[1].\n\n";

@str=split(":", $string, 2);
print $str[0],"\n";  # The first element of the array
print $str[1],"\n";  # The rest of the array because limit is 2
print $str[2],"\n";  # Nothing is printed

@str=split(":", $string);  # Limit not stated will be one more
	                           # than total number of fields
print $str[0],"\n";
print $str[1],"\n";
print $str[2],"\n";
print $str[3],"\n";
print $str[4],"\n";
print $str[5],"\n";

( $name, $birth, $address )=split(":", $string); 
          # Limit is implicitly 4, one more than 
          # the number of fields specified
print $name , "\n"; 
print $birth,"\n";
print $address,"\n";


print 0 .. 10,"\n";
@alpha=('A' .. 'Z'); 
print "@alpha";
@a=('a'..'z', 'A'..'Z'); 
print "@a\n";
@n=( -5 .. 20 ); 
print "@n\n";
#!/usr/bin/perl
$x="pop";
$y="corn";
$z="*";
print $z x 10, "\n";              # Print 10 stars
print $x . $y, "\n";              # Concatenate "pop" and "corn"
print $z x 10, "\n";              # Print 10 stars

print (($x . $y ."  ")  x  5 );   # Concatenate "pop" and "corn" 
	                                  # and print 5 times
print "\n";  
print uc($x . $y), "!\n";         # Convert string to uppercase


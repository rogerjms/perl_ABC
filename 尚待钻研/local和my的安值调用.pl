$first="Per";
$last="Lindberg";
&greeting ( $first, $last ) ;    # Call the greeting subroutine
print "---$fname---\n" if defined $fname;   # $fname is local to 
                                            # sub greeting

# Subroutine defined
sub greeting{ 
	 my ($fname, $lname) = @_ ;  # Call by value
	print "Welcome $fname!!\n";
}

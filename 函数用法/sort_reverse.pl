# Simple alphabetic sort
@list=("dog","cat", "bird","snake" );
print "Original list: @list\n";
@sorted = sort(@list);
print "Ascii sort: @sorted\n";

# Reversed alphabetic sort
@sorted = reverse(sort(@list));
print "Reversed Ascii sort: @sorted\n";

@list=("dog","cat", "bird","snake" );
print "Original list: @list\n";
# Ascii sort using a subroutine
sub asc_sort{
       $a cmp $b;  # Sort ascending order
}
@sorted_list=sort asc_sort(@list);
print "Ascii sort: @sorted_list\n";

# Numeric sort using subroutine
sub numeric_sort {
    $a <=> $b ;
}  # $a and $b are compared numerically

@number_sort=sort numeric_sort 10, 0, 5, 9.5, 10, 1000;
     print "Numeric sort: @number_sort.\n"; 

# Sorting numbers with an unamed subroutine
@sorted_numbers= sort {$a <=> $b} (3,4,1,2);
print "The sorted numbers are: @sorted_numbers", ".\n";


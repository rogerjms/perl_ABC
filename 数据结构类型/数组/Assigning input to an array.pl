# Assigning input to an array
print "Tell me everything about yourself.\n ";
@all = <STDIN>;
print "@all";
print "The number of elements in the array are: ", 
       $#all + 1, ".\n";
print "The first element of the array is: $all[0]";


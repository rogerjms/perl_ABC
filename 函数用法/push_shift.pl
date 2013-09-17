# Adding elements to the end of a list
@names=("Bob", "Dan", "Tom", "Guy");
push(@names, "Jim", "Joseph", "Archie");
print "@names \n";

# Removing elements from front of a list
@names=("Bob", "Dan", "Tom", "Guy");
$ret  = shift @names;
print "@names\n";
print "The item shifted is $ret.\n";


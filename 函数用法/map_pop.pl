## Map using a block
#open(FH, "datebook.master") or die;
#@lines=<FH>;
#@fields = map { split(":") } @lines;
#foreach $field (@fields){
#	 print $field,"\n";
#}

# Removing an element from the end of a list
@names=("Bob", "Dan", "Tom", "Guy");
print "@names\n";
$got = pop(@names);   # Pops off last element of the array
print "$got\n";
print "@names\n";


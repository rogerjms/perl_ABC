%geneticmarkers = ('curly' => 'yes', 'hairy' => 'no', 'topiary' => 'yes');
$hashref = \%geneticmarkers;
print "Here is what's in the reference:\n";
print $hashref, "\n";
print "Here is what the reference is pointing to:\n";
foreach $k (keys %$hashref) {
print "key\t$k\t\tvalue\t$$hashref{$k}\n";
}
print "Dereferencing using the arrow operator:\n";
foreach $k (keys %$hashref) {
print "key\t$k\t\tvalue\t$hashref->{$k}\n";
}
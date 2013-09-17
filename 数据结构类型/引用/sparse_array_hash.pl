$array = { };
$array->{4}{83} = 'set';
$array->{34}{9} = 'set';
for(my $i=0 ; $i < 100 ; ++$i) {
for(my $j=0 ; $j < 100 ; ++$j) {
if( exists($array->{$i}) and exists($array->{$i}{$j}) ) {
print "Array element row $i column $j is $array->{$i}{$j}\n";
}
}
}
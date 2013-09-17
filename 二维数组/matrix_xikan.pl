# Declare reference to (empty) anonymous array
$array = [ ];
# Initialize the array
for($i=0; $i < 4 ; ++$i) {
for($j=0; $j < 4 ; ++$j) {
$array->[$i][$j] = $i * $j;
}
}
# Reset one of the elements of the array
$array->[3][2] = 99;
# Print the array
for($i=0; $i < 4 ; ++$i) {
for($j=0; $j < 4 ; ++$j) {
printf("%3d ", $array->[$i][$j]);

}
print "\n";
}
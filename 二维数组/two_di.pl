@probes = (
[1, 3, 2, 9],
[2, 0, 8, 1],
[5, 4, 6, 7],
[1, 9, 2, 8]
);#°´array of an arry
print "The probe at row 1, column 2 has value ", $probes[1][2], "\n";
#Another good way to build an array is to declare a reference to an anonymous array.
#an anonymous array of anonymous arrays
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
#Alternatively, if the values are known, I can declare this as an anonymous array of anonymous arrays
#by saying:
$array1 = [
[0, 0, 0, 0],
[0, 1, 2, 3],
[0, 2, 4, 6],
[0, 3, 99, 9]
];
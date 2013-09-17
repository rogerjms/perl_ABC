#@array = ( [1,2,3 ], [4,5,6] );
#$array=[[a,s,d],[f,g,h],[j,k,l]];
#print $$array[0][0];
#print $array[0][0];# Populate a 3-dimensional array
$array = [ ];
# Initialize the array
for($i=0; $i < 4 ; ++$i) {
for($j=0; $j < 4 ; ++$j) {
for($k=0; $k < 4 ; ++$k) {
print $array->[$i][$j][$k] = $i * $j *$k,"\t";
}
}
}
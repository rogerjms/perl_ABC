while(<>){
push @AoA, [ split ];
}
#print "$AoA[3][2];\n";
for $row (@AoA) {
print "@$row\n";
}
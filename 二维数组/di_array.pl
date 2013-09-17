while(<>){
@tmp=split;
push@AoA,[@tmp]}
for $aref (@AoA){
print"\t[@$aref]\n";
}
print$AoA[0][0];



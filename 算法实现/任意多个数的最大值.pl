$maxium=max(3,5,6,8,9);
sub max{
my($max_sofar)=shift@_;
foreach(@_){
if($_>$max_sofar){
$max_sofar=$_;
}
}
$max_sofar;
}
print $maxium;
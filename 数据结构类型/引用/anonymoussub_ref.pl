$findmotif = sub {
my($input) = @_;
if($input =~ /CCGA/) {
print "I found CCGA!\n";
}else{
print "No motif\n";
}
};
$findmotif->('ATTAATTTTCCGATC');
&$findmotif('ATTAATTTTCCGATC');#学会怎么设匿名函数，怎么引用匿名函数！！
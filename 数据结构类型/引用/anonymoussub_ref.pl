$findmotif = sub {
my($input) = @_;
if($input =~ /CCGA/) {
print "I found CCGA!\n";
}else{
print "No motif\n";
}
};
$findmotif->('ATTAATTTTCCGATC');
&$findmotif('ATTAATTTTCCGATC');#ѧ����ô��������������ô����������������
print "Mark 1:\n";
findmotif('ATTAATTTTCCGATC');
print "Mark 2:\n";
&findmotif('ATTAATTTTCCGATC');
print "Mark 3:\n";
$subref = \&findmotif;
&$subref('ATTAATTTTCCGATC');
print "Mark 4:\n";
$subref = \&findmotif;
$subref->('ATTAATTTTCCGATC');#很震撼啊，竟然还可以这么些，解决了困扰我好久的一个疑问！！顶！！1
print "Mark 5:\n";
$subref2 = \findmotif;
&$subref2('ATTAATTTTCCGATC');
sub findmotif {
my($input) = @_;
if($input =~ /CCGA/) {
print "I found CCGA!\n";
}else{
print "No motif\n";
}
}
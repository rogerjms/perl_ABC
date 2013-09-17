@aminoacids1 = ('E', 'V', 'L');
@aminoacids2 = ('D', 'T', 'Y');
printacids(\@aminoacids1, \@aminoacids2);
sub printacids {
my($aa1, $aa2) = @_;
print "Amino acids 1\n";
print "@$aa1\n";
print "Amino acids 2\n";
print "@$aa2\n";
}# 没有返回值也可以！！
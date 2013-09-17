my $dna = 'ACGT';
if ($dna eq 'ACGT') {
print "This statement gets executed\n";
print "Here's the subroutine call:\n";
isdna($dna);
} else {
print "This statement does not get executed\n";
#
# The following subroutine definition is in a block which is
# never executed at runtime.
#
sub isdna {
# Print the argument if it is DNA
if($_[0] =~ /^[ACGT]+$/i) {
print $_[0], "\n";}
else {
return 0;
}
}
}
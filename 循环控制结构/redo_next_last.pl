foreach(1..10){
print "Iteration number$_.\n\n";
print "please choose:last,next,redo,or none of them?";
chomp(my $choice=<STDIN>);
print "\n";
last if $choice=~/last/i;
next if $choice=~/next/i;
redo if $choice=~/redo/i;
print "that is not any of the choice ...\n\n";
}
print "that's all,folks!\n";
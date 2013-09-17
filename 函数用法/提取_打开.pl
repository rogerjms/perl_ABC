#!usr/bin/perl  -w
my $fh;
my $a;
$fh=open_file("file.txt");
while(<$fh>){
	if(/^ {5}\S.*\n(^ {23}\S.*\n)*/gm){
	print "$&";}else{
		last;}
	};
exit;
#print @a;


sub open_file{
	my ($name)=@_;
	my $fh;
unless(open($fh,$name)){
print "i can not open $name!\n";
exit;}
return $fh;}
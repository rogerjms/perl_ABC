#!usr/bin/perl  -w
use strict;
my $name="ºÏ²¢.txt";
my $fh;
my $word;
my $i=0;
my @gre;
my $gre;
#my $file=`date`;
#print $file;
$fh=open_file($name);
open(WORD,">>word2.txt")or die "i can not do it!\n";
@gre=<$fh>;
srand time;
foreach (1..100){
	$i=int rand scalar @gre;
  print WORD $gre[$i];}
  exit;
 
sub open_file{
	my ($name)=@_;
	my $fh;
unless(open($fh,$name)){
print "i can not open $name!\n";
exit;}
return $fh;}


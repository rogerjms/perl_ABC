#!/usr/bin/perl
# - main program to test parse_features
#use strict;
#use warnings;
my $library = @_;
my $fh;
my $record;
my $dna;
my $annotation;
my %fields;
my @features;
my $library = 'mit.sequence.gb.txt';
 $fh = open_file($library);
open(TE,">simple");
while($record = get_next_record($fh)){
     push(@record,$record);}
     $i=<STDIN>;
     #print scalar @record;
     #for ($i=0;$i<scalar @record;++$i){
     print TE $record[$i];
    open (TE,"simple")or die "can not open it!\n";
    @a=<TE>;
 foreach $line (@a){
 if( $line =~ /^ORIGIN/ ) { 
     last;            
   }elsif($line=~/^ {5}CDS/){
     $flag=1;
   }elsif($line=~/^ {5}[misc_feature|exon]/){
	   $flag=0;
	 }elsif($flag){
	      push(@s,$line);
	 }
	 open(T,">simpl");
   print T @s;}
open(T,"simpl")or die "failure!";
open(E,">simp");
@a=<T>;
foreach $line(@a){$line=~s/\s//g;
	#print "$line\n";
	if($line=~/^\/gene\=\"(\w+)\"/){
		($gene=$line)=~s/^\/gene\=\"(\w+)\"/$1/;
	  print $gene;
	 }elsif($line=~/^\/translation\=\"[A-Z]+/){
		($aa=$line)=~s/^\/translation\=\"([A-Z]+)/$1/;
		$flag=1;
	  }elsif($flag=1){
		$aa.=$line;
	 }elsif($line=~/^[a-z]+/){
	 	 $flag=0;}
	 }	print  "\n$aa\n";
	
	exit;

 
 
 
 
exit;
sub get_next_record {

    my($fh) = @_;

    my($offset);
    my($record) = '';
    my($save_input_separator) = $/;

    $/ = "//\n";

    $record = <$fh>;

    $/ = $save_input_separator;

    return $record;
}sub open_file {

    my($filename) = @_;
    my $fh;

    unless(open($fh, $filename)) {
        print "Cannot open file $filename\n";
        exit;
    }
    return $fh;
}

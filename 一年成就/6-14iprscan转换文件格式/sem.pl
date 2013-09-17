#!/usr/bin/perl
# - test program of GenBank library subroutines

# Don't use BeginPerlBioinfo
# Since all subroutines defined in this file
# use BeginPerlBioinfo; # see Chapter 6 about this module
# Declare and initialize variable
my $fh; # variable to store filehandle
my $record;
my $dna;
my $annotation;
my $offset;
my $library = 'Semo2.out.bak';
my @a;
my %course;
open SS,"Selmo1_GeneModels_FilteredModels2_aa.fasta";
while(<SS>){
  if(/^>jgi\|Selmo1\|(\d+)\|(.*)/){#print $1,"\t",$2,;last;
  	$course{$2}=$1;
  	}
}
# Perform some standard subroutines for test
$fh = open_file($library);#获得文件句柄
open RR,">sem_result";
while( $record = get_next_record($fh) ) {#if($record=~/^Sequence\"(.*?)\".*/g&&@a=($record=~/IPR.{6}/g)){ print $1,"\n";}

if(@b=($record=~/^Sequence\"(.*?)\".*/g)){print RR "gi:","$course{$b[0]}","分别为:","\n";}
if(@a=($record=~/IPR.{6}/g)){print RR "@a","\t","共",scalar @a,"个","\n";}
}
exit;
sub open_file {
my($filename) = @_;
my $fh;
unless(open($fh, $filename)) {
print "Cannot open file $filename\n";
exit;
}
return $fh;
}
sub get_next_record {
my($fh) = @_;
my($offset);
my($record) = '';
$/ = "//\n";
$record = <$fh>;
$record =~ s/\s//g;
$/ = $save_input_separator;
return $record;
}

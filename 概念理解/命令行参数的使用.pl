#!/usr/bin/perl -w
# Example 6-1   A program with a subroutine to append ACGT to DNA
#说说子程序，在其他语里称为函数或方法
# The original DNA
open TRANS1 ,$ARGV[0] or die "$!";
chomp(@dna1=<TRANS1>);
close(TRANS1);
$DNA1=join("",@dna1);
$DNA1 =~ s/\s//g;
open TRANS2 ,$ARGV[1] or die "$!";
chomp(@dna2=<TRANS2>);
close(TRANS2);
$DNA2=join("",@dna2);
$DNA2 =~ s/\s//g;
open TRANS3 ,">$ARGV[2]" or die "$!";


# The call to the subroutine "addACGT".
# The argument being passed in is $dna; the result is saved in $longer_dna
$longer_dna = add($DNA1,$DNA2);

print TRANS3 "I got $longer_dna\n\n";
close (TRANS3);

exit;

################################################################################
# Subroutines for Example 6-1
################################################################################

# Here is the definition for subroutine "addACGT"

sub add {
    my($dna1,$dna2) = @_;#@_里面存的是函数参数所组成的列表

    $dna= $dna1.$dna2;
    return $dna;#如果不显式地写出来，那么最后一个语句的返回值默认为返回值
}

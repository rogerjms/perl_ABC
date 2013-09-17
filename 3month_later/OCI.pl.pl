#!/usr/bin/perl -w
use strict;
#programmed by guixiaoke at
#Tue Feb 28 14:06:39 2012
my $row;
my @row;
my $i;
my @trans;
open OCI,"OCI_matrix_adjust.txt" or die $!;
open OC,">OC.txt";
@row=<OCI>;
#print scalar @row,"\n";
for($i=1;$i< scalar @row;$i++){
@trans=split /\t/,$row[$i];
shift @trans;
print OC "@trans";

}


















###########################################################
#####################
# Subroutines
###########################################################
#####################

exit;
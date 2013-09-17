#!/usr/bin/perl -w
use strict;

open (CTR,"control.txt")||die "error";
my ($count_A,$count_T,$count_G,$count_C)=(0,0,0,0);

while(<CTR>){
    chomp;
    my @line=split(/\s+/,$_);#means split;把整个文本连成了一行
#   print "$line[0]\n";

    my $a= ($line[0] =~ tr/Aa//);
    my $t= ($line[0] =~ tr/Tt//);
    my $g= ($line[0] =~ tr/Gg//);
    my $c= ($line[0] =~ tr/Cc//);

    $count_A=$count_A+$a;
    $count_T=$count_T+$t;
    $count_G=$count_G+$g;
    $count_C=$count_C+$c;

    }

close CTR;

print "A:$count_A\tG:$count_G\tC:$count_C\tT:$count_T\n";

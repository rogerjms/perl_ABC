#!/usr/bin/perl
use strict;
use warnings;

my (%a, %b);
open (A, "file1");
open (B, "file2");
open (OUT, ">out.tab");

while (<A>) {
        my @info = split /\s+/;
        my $gid = $info[0];
        my $site = $info[2];
        $a{$gid} = $site;
}

while (<B>) {
        my @info = split /\s+/;
        my $gid = $info[1];
        my $site = $info[5];
        if (defined $a{$gid} && $site < $a{$gid}) {
                print OUT $_;
        }
}
close (A);
close (B);
print "...Done! Out file: out.tab.\n";
exit (1);
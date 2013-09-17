#!/usr/bin/perl
package singlenum;
require Exporter;
@ISA=qw(Exporter);
@EXPORT_OK=qw(clean singlestr);

sub singlestr
{
        open(ctr,"control.txt")||die("Could not open control.txt");
    my $text=<ctr>;
    my $N=0;
    while($text)
    {
            $count = ($text =~ tr/($_[0])//);
            $N=$N+$count;
            $text=<ctr>;
    }
     return "$N";        
}

sub clean
{
        return chomp($_[0]);
}
1;
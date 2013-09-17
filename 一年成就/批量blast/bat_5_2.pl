#!/usr/local/bin/perl
blast($ARGV[0],$ARGV[1],$ARGV[2],$ARGV[3],$ARGV[4],);
sub blast{
      my ($a,$b,$c,$d,$e)=@_;

    @a=("formatdb","-i","$a","-p","T","-o","T");
    @b=("formatdb","-i","$b","-p","T","-o","T");
    @c=("formatdb","-i","$c","-p","T","-o","T");
    @d=("formatdb","-i","$d","-p","T","-o","T");
    @e=("formatdb","-i","$e","-p","T","-o","T");
    system(@a);
    system(@b);
    system(@c);
    system(@d);
    system(@e);
    }

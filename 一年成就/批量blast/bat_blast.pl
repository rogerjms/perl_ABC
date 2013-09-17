#!/usr/local/bin/perl
blast("sub.fa","sub2.fa");
sub blast{
      my ($a,$b)=@_;

    @a=("formatdb","-i","$a","-p","T","-o","T");
    @b=("formatdb","-i","$b","-p","T","-o","T");
    system(@a);
    system(@b);
    
  @c=("blastall","-i","$a","-d","$b","-p","blastp","-o","_m8","-e","1e-10","-m8");
   return system (@c);
  
    }

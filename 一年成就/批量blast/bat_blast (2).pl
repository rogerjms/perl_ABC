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

   @ab=("blastall","-i","$a","-d","$b","-p","blastp","-o","ab_m8","-m8");
   @ac=("blastall","-i","$a","-d","$c","-p","blastp","-o","ac_m8","-m8");
   @ad=("blastall","-i","$a","-d","$d","-p","blastp","-o","ad_m8","-m8");
   @ae=("blastall","-i","$a","-d","$e","-p","blastp","-o","ae_m8","-m8");
   @ba=("blastall","-i","$b","-d","$a","-p","blastp","-o","ba_m8","-m8");
   @bc=("blastall","-i","$b","-d","$c","-p","blastp","-o","bc_m8","-m8");
   @bd=("blastall","-i","$b","-d","$d","-p","blastp","-o","bd_m8","-m8");
   @be=("blastall","-i","$b","-d","$e","-p","blastp","-o","be_m8","-m8");
   @ca=("blastall","-i","$c","-d","$a","-p","blastp","-o","ca_m8","-m8");
   @cb=("blastall","-i","$c","-d","$b","-p","blastp","-o","cb_m8","-m8");
   @cd=("blastall","-i","$c","-d","$d","-p","blastp","-o","cd_m8","-m8");
   @ce=("blastall","-i","$c","-d","$e","-p","blastp","-o","ce_m8","-m8");
   @da=("blastall","-i","$d","-d","$a","-p","blastp","-o","da_m8","-m8");
   @db=("blastall","-i","$d","-d","$b","-p","blastp","-o","db_m8","-m8");
   @dc=("blastall","-i","$d","-d","$c","-p","blastp","-o","dc_m8","-m8");
   @de=("blastall","-i","$d","-d","$e","-p","blastp","-o","de_m8","-m8");
   @ea=("blastall","-i","$e","-d","$a","-p","blastp","-o","ea_m8","-m8");
   @eb=("blastall","-i","$e","-d","$b","-p","blastp","-o","eb_m8","-m8");
   @ec=("blastall","-i","$e","-d","$c","-p","blastp","-o","ec_m8","-m8");
   @ed=("blastall","-i","$e","-d","$d","-p","blastp","-o","ed_m8","-m8");
   
   
   return system (@ab),system(@ac),system (@ad),system (@ae),system (@ba),system (@bc),system (@bd),system (@be),system (@ca),system (@cb),system (@cd),system (@ce),system (@da),system (@db),system (@dc),system (@de),system (@ea),system (@eb),system (@ec),system (@ed);

    }

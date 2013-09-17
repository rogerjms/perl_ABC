open SEM,"Semo2.out";
open SEB,">Semo2.out.bak";
select(SEB);
while(<SEM>){
  if(/^Sequence.*/){
    print "//","\n",$_;}else{
    print ;}

}
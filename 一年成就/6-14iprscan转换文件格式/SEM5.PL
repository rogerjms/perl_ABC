open RE,"sem_result";
open RED,">sem_result1";
select(RED);
while(<RE>){
  #if(@a=/\d+/){print ;}elsif(@b=/^IRP.*/){print @a;}
  if(/^\d+.*/){
    print "//","\n",$_;}else{
    print ;}

}
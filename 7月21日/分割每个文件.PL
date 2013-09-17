

@gbk = glob('lianxi/*');

for ($n = 0; $n <= @gbk; $n++){


	
	open (SEM, "$gbk[$n]");
	open SEB,">$gbk[$n].bak";
select(SEB);
while(<SEM>){
  if(/^>/){
    print "//","\n",$_;}else{
    print ;}

}
}
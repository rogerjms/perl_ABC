

@gbk = glob('lianxi/*');

for ($n = 0; $n <= @gbk; $n++){


	
	open (SEM, "$gbk[$n]");
	open SEB,">$gbk[$n].bak";
select(SEB);
while(<SEM>){
	$_=<SEM>;
  print $_;

}
}
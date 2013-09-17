open GRE,"1.txt";
open GG,">2.txt";
#@gre=<GRE>;
$i=1;
while(<GRE>){
	if ($_=~/^guixiaoke/){
	 $_=$i++."guixiaoke";
	 print GG $_;
	}else{
		print GG $_;
		
		}
}

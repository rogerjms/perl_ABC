open(T,"simpl")or die "failure!";
open(E,">simp");
@a=<T>;

foreach $line(@a){$line=~s/\s//g;
	#print "$line\n";
	if($line=~/^\/gene\=\"(\w+)\"/){
		($gene=$line)=~s/^\/gene\=\"(\w+)\"/$1/;
	  print $gene;
	 }elsif($line=~/^\/translation\=\"[A-Z]+/){
		($aa=$line)=~s/^\/translation\=\"([A-Z]+)/$1/;
		$flag=1;
	  }elsif($flag=1){
		$aa.=$line;
	 }elsif($line=~/^[a-z]+/){
	 	 $flag=0;}
	 }	print "\n$aa";
	exit;

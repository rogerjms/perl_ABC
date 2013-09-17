
@a=qw(gfgh ghg oppo uuu);
@b=qw(eeeeee uuuuu gggg);
$sub=\&find;
&$sub(@a,@b);

sub find{
	($a,$b)=@_;
	$a=\@a;
	$b=\@b;
return print "$$a[0]\n$$b[0]";
	
}

 

 	
 	
 		

 	
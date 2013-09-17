open(TEM,"tem3");

$b=<TEM>;if(/^ {21}\/[\w]+\=\"([\w]+)\"$/){
	print "hello";}
$c=s/^ {21}\/[\w]+\=\"([\w]+)\"$/$1/;
print $c;
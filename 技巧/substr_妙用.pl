my $s = "The black cat climbed the green tree";
my $z = substr $s, 14, 7, "jumped from";     
print $z,"\n";
print $s;  


$x = '1234';   for (substr($x,1,2)) {        
$_ = 'a';   print $x,"\n";           
$_ = 'xyz'; print $x,"\n";           
$x = '56789';     
$_ = 'pq';  print $x,"\n";       }
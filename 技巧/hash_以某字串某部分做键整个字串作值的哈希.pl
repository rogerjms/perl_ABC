
$a="aam2121213yearsold";
($b=$a)=~s/^[a-z]+([0-9]+)(yearsold)$/$1/;
#s/^(aam)([0-9]+)(yearsold)$/$2/;
#print "$b";
$c{$b}=$a;
#$results{$key} = $value;

print "********$b*********\n";
print $c{$b};

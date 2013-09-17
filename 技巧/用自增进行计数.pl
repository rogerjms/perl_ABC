my @people=qw{a s d f g h a s d s };
my %count;
$count{$_}++ foreach @people;
print $count{a},"\n";#用来检查列表中有哪些元素，并计算出现了几次
my $m=5;
$b=$m++;
$n=++$m;
print $b,"\n",$n;
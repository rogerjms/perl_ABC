my @people=qw{a s d f g h a s d s };
my %count;
$count{$_}++ foreach @people;
print $count{a},"\n";#��������б�������ЩԪ�أ�����������˼���
my $m=5;
$b=$m++;
$n=++$m;
print $b,"\n",$n;
my $name="hello,xiaoke";
my $where1=index($name,"o");
my $where2=index($name,"o",$where1+1);#注意pisition的意义
print "$where1\n","$where2\n";

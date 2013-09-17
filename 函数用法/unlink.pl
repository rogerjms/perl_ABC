$name=@ARGV[0];
$name1=@ARGV[1];
$name2=@ARGV[2];
$a=unlink "$name","$name1","$name2";#返回删除的个数
print "I deleted $a files just now\n";
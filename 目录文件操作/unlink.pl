$name=@ARGV[0];
$name1=@ARGV[1];
$name2=@ARGV[2];
$a=unlink "$name","$name1","$name2";#����ɾ���ĸ���
print "I deleted $a files just now\n";
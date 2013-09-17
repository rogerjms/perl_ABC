my $text="i love you very much!";
my @words=($text=~/[a-z]+/ig);#列表上下文返回数组
print "result: ","@words";
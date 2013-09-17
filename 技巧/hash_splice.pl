@a=@b{qw/cat dog pig/};
#while(($key,$value)=each %b){
#print "$key=>$value\n";
#}
#print @a;
my @players=qw / a b c /;
my @score=(100,200,300);
@sc{@players}=@score;
while(($key,$value)=each %sc){
print "$key=>$value\n";
}
print "@sc{@players}";
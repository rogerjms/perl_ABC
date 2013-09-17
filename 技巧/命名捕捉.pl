use 5.010;
my $names="Fred or Barney";
if($names=~m/(\w+) and (\w+)/){
#say "i saw $1 and $2";
}
use 5.010;
my $names="Fred or Barney";
if($names=~m/(\w+) (and|or) (\w+)/){
say "i saw $1 and $2";
}
use 5.010;
my $names="Fred or Barney";
if($names=~m/(?<name1>\w+) (and|or) (?<name2>\w+)/){#很好玩很强大
print  "i saw $+{name1} and $+{name2}";
}
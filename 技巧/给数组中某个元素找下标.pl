
my @a=qw/a b d/;
my $result=which_element_is("b",@a);
print $result;



sub which_element_is{
my ($what,@array)=@_;
foreach(0..$#array){
if($what eq $array[$_]){
return $_;
}



}
-1;

}
$a=11;
$b=6;
@c= list_from_a_to_b();#不加与号还不行呀?那是你以前没在之程序后加括号
#@c= list_from_a_to_b;
print @c;





sub list_from_a_to_b{
if ($a<$b){
$a..$b;
}else{
reverse $b..$a;
}
}
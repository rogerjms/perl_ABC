$a=11;
$b=6;
@c= list_from_a_to_b();#������Ż�����ѽ?��������ǰû��֮����������
#@c= list_from_a_to_b;
print @c;





sub list_from_a_to_b{
if ($a<$b){
$a..$b;
}else{
reverse $b..$a;
}
}
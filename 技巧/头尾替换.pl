$str="Peace and War";
$str=~s/(Peace) and (War)/$2,$1/ig;
print $str;
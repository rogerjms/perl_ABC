#!/usr/bin/perl -w

opendir (DIR, "D:/test") || die "can not open C:/test!";   

#把文件名存入数组
@filename=readdir(DIR); #要注意它把. ..也返回了 

close (DIR);

for($i=0;$i<@filename;$i++) {

if(open (CONTENT, "D:/test/$filename[$i]")){;


#把文件内容存入数组
@buff=<CONTENT>;   
close (CONTENT);

for ($index=0; $index < @buff; $index++) {
#把字母转为小写
$buff[$index]=lc ($buff[$index]); 

}

#把转换后的内容写入源文件
open (DEST,">D:/test/$filename[$i]") || die "$!";
print DEST @buff;
close (DEST);
}
}


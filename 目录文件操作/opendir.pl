#!/usr/bin/perl -w

opendir (DIR, "D:/test") || die "can not open C:/test!";   

#���ļ�����������
@filename=readdir(DIR); #Ҫע������. ..Ҳ������ 

close (DIR);

for($i=0;$i<@filename;$i++) {

if(open (CONTENT, "D:/test/$filename[$i]")){;


#���ļ����ݴ�������
@buff=<CONTENT>;   
close (CONTENT);

for ($index=0; $index < @buff; $index++) {
#����ĸתΪСд
$buff[$index]=lc ($buff[$index]); 

}

#��ת���������д��Դ�ļ�
open (DEST,">D:/test/$filename[$i]") || die "$!";
print DEST @buff;
close (DEST);
}
}


#!/usr/bin/perl
use Net::FTP;
 my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime();
$year=$year+1900;  #��ʾΪ��ǰ���
$mon=$mon+1;       #��ʾΪ��ǰ�·�
 $mon = "0".$mon if ($mon < 10);   #��ʾ�·�Ϊ 01,02�ĸ�ʽ
$sum="$year-$mon-$mday";  #��ʾʱ�� Ϊ 2008-12-22 �����ĸ�ʽ
print $sum;
$ftp = Net::FTP->new("192.168.96.234", Debug =>1);


$ftp->login('gxk','448468678');
$ftp->binary;
$ftp->cwd("upfiles");
 $ftp->get("IPMSG.exe")or die "$!";

$ftp->quit;

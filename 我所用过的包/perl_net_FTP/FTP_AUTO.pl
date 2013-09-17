#!/usr/bin/perl
use Net::FTP;
 my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime();
$year=$year+1900;  #显示为当前年份
$mon=$mon+1;       #显示为当前月份
 $mon = "0".$mon if ($mon < 10);   #显示月份为 01,02的格式
$sum="$year-$mon-$mday";  #显示时间 为 2008-12-22 这样的格式
print $sum;
$ftp = Net::FTP->new("192.168.96.234", Debug =>1);


$ftp->login('gxk','448468678');
$ftp->binary;
$ftp->cwd("upfiles");
 $ftp->get("IPMSG.exe")or die "$!";

$ftp->quit;

#! /usr/bin/perl
@lines= `ping 192.168.96.234`;
foreach(@lines){
s/\w<([^>]+)/\U$1/g;
print;
}
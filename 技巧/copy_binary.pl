#!d:/perl/perl.exe -w
open YU,"E:/2011_bulls_top10.nba_nba_576x324.flv" || die "$!";
 binmode(YU);
 open XK,">xiaoke.flv"|| die "$!";
 binmode(XK);
 print XK <YU>;
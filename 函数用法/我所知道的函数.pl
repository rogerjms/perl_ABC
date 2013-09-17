index;
rindex;
length;
pos;
substr;#用法很灵活substrate（$string,$inital_position,$length）,对于一个很大的字串，起始位置可以为负值
如substr("jdshcjsdhcjksdcvklsjklsdjflksdjkflsdjflcwejpokdf",-3,2);返回kd;
index跟substr可以紧密配合；
my $long ="some very very long string";
my right=substr($long,index($long,"l"));#配合得多好，
substr与index能办到的是，正则多半也能办到，选择最合适的方法
lc;
uc;
lcfirst;
ucfirst;
join;
chop;
chomp;
hex;oct;ord;pack;unpack
sprintf:很好用的字符格式化，但不会把返回的字串打印出来，而是存放在变量里
==========================以上为字符串处理函数===========================
grep;splice;shift;unshift;push;pop;split;sort;reverse;map;
sort默认以ASCII码序排列，perl允许建立自己的排序规则，仔细想，排序就是比较一堆东西，然后将其依序排好，由于不可能一次比较所有东西
所以最终还是两两比对，根据两者间顺序定位，进而让全体成员就位，perl已经知道这些步骤，只是不知道如何两两之间的排序。
飞碟操作符：<=>三路比较，数字；字母比较用，cmp.不分大小写的排序，倒序排序；
#哈希按值排序
%score =("bar"=>195,"bar2"=>205,"bar3"=>30);
@winners=sort by_score keys %score;
sub by_score{$score($b)<=>$score($a)}#将序排列
print @winners;
map对列表以左边的表达式去求值；与foreach比较像
==================以上为数组跟列表===================================
keys,values;each;delete;exists;
===============以上为哈希============================
open;close;print;write,printf;rename;unlink;glob;-e;-r;-d;
opendir;readdir;mkdir;chdir;remdir;seek;tell;system0
===============以上为文件处理函数=================
捕捉错误eavl=》$@;

进程管理：system与exec一样Does exactly the same thing as exec LIST , except that a fork is done first, 
and the parent process waits for the child process to exit.
===========================以下的跟Linux下shell编程差不多===================================
\\\目录操作：：：：：：：：：：：：：
\\\在目录树中移动：程序运行时以自己的工作目录作为相对路径的的起点。
\\\chdir,对操作系统的调用，发生错误时返回$!,但对于启动perl程序的进程(shell)而言，他的工作目录不会随perl程序工作目录改变而改变
\\\所以不能写出perl程序来代替cd命令，
\\\文件名通配：
\\\glob
\\\目录句柄
\\\opendir,readdir,只返回目录名；
\\\操作文件与目录：
\\\unlink ,rename
\\\文件链接 
\\\link,unlink
\\\建立移除目录
\\\mkdir rmdir
\\\修改权限，隶属关系，时间戳
\\\chmod chown utime
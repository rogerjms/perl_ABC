index;
rindex;
length;
pos;
substr;#�÷������substrate��$string,$inital_position,$length��,����һ���ܴ���ִ�����ʼλ�ÿ���Ϊ��ֵ
��substr("jdshcjsdhcjksdcvklsjklsdjflksdjkflsdjflcwejpokdf",-3,2);����kd;
index��substr���Խ�����ϣ�
my $long ="some very very long string";
my right=substr($long,index($long,"l"));#��ϵö�ã�
substr��index�ܰ쵽���ǣ�������Ҳ�ܰ쵽��ѡ������ʵķ���
lc;
uc;
lcfirst;
ucfirst;
join;
chop;
chomp;
hex;oct;ord;pack;unpack
sprintf:�ܺ��õ��ַ���ʽ����������ѷ��ص��ִ���ӡ���������Ǵ���ڱ�����
==========================����Ϊ�ַ���������===========================
grep;splice;shift;unshift;push;pop;split;sort;reverse;map;
sortĬ����ASCII�������У�perl�������Լ������������ϸ�룬������ǱȽ�һ�Ѷ�����Ȼ���������źã����ڲ�����һ�αȽ����ж���
�������ջ��������ȶԣ��������߼�˳��λ��������ȫ���Ա��λ��perl�Ѿ�֪����Щ���裬ֻ�ǲ�֪���������֮�������
�ɵ���������<=>��·�Ƚϣ����֣���ĸ�Ƚ��ã�cmp.���ִ�Сд�����򣬵�������
#��ϣ��ֵ����
%score =("bar"=>195,"bar2"=>205,"bar3"=>30);
@winners=sort by_score keys %score;
sub by_score{$score($b)<=>$score($a)}#��������
print @winners;
map���б�����ߵı��ʽȥ��ֵ����foreach�Ƚ���
==================����Ϊ������б�===================================
keys,values;each;delete;exists;
===============����Ϊ��ϣ============================
open;close;print;write,printf;rename;unlink;glob;-e;-r;-d;
opendir;readdir;mkdir;chdir;remdir;seek;tell;system0
===============����Ϊ�ļ�������=================
��׽����eavl=��$@;

���̹���system��execһ��Does exactly the same thing as exec LIST , except that a fork is done first, 
and the parent process waits for the child process to exit.
===========================���µĸ�Linux��shell��̲��===================================
\\\Ŀ¼������������������������������
\\\��Ŀ¼�����ƶ�����������ʱ���Լ��Ĺ���Ŀ¼��Ϊ���·���ĵ���㡣
\\\chdir,�Բ���ϵͳ�ĵ��ã���������ʱ����$!,����������perl����Ľ���(shell)���ԣ����Ĺ���Ŀ¼������perl������Ŀ¼�ı���ı�
\\\���Բ���д��perl����������cd���
\\\�ļ���ͨ�䣺
\\\glob
\\\Ŀ¼���
\\\opendir,readdir,ֻ����Ŀ¼����
\\\�����ļ���Ŀ¼��
\\\unlink ,rename
\\\�ļ����� 
\\\link,unlink
\\\�����Ƴ�Ŀ¼
\\\mkdir rmdir
\\\�޸�Ȩ�ޣ�������ϵ��ʱ���
\\\chmod chown utime
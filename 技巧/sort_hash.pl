%score =("bar"=>195,"bar2"=>205,"bar3"=>30);
@winners=sort by_score keys %score;
print @winners;
sub by_score {$score{$b}<=>$score{$a}or $a cmp $b}#�Ȱ��������У��������ظ��İ�ASCII������
#�ټ������ξͱ�Ϊ��ֵ�����ˡ�{���or}

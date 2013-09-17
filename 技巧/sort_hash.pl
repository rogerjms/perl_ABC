%score =("bar"=>195,"bar2"=>205,"bar3"=>30);
@winners=sort by_score keys %score;
print @winners;
sub by_score {$score{$b}<=>$score{$a}or $a cmp $b}#先按降序排列，分数有重复的按ASCII码排列
#再加以修饰就变为多值排序了。{多个or}

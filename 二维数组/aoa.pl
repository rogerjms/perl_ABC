$array = [
[0, 0, 0, 0],
[0, 1, 2, 3],
[0, 2, 4, 6],
[0, 3, 99, 9]
 ];#二维数组，要知道，二维数组跟而为匿名数组可不一样。
print $array[1][1];
print $$array[1][2];

                                        
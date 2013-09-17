# 2008-10-1

open (output, ">glob");

@gbk = glob('PS_result/*');	# 将PS_result目录中的所有文件名保存到@gbk数组中

for ($n = 0; $n <= @gbk; $n++){

	print output "$gbk[$n]\n";
	
	open (input, "$gbk[$n]");
	$seq = <input>;
	print output "$seq\n";

}


# 2008-10-1

open (output, ">glob");

@gbk = glob('PS_result/*');	# ��PS_resultĿ¼�е������ļ������浽@gbk������

for ($n = 0; $n <= @gbk; $n++){

	print output "$gbk[$n]\n";
	
	open (input, "$gbk[$n]");
	$seq = <input>;
	print output "$seq\n";

}


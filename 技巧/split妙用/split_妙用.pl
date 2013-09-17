$line="a		s	d	f	g	h	";
$pattern = "[\\t + ]";
     @words = split(/$pattern/, $line);
     print scalar @words;

my @words=qw{a s d f g h j k};
my $error=0;
foreach (@words){
	##redo 会跳到这里
	print "type the word '$_': ";
	chomp(my $try =<STDIN>);
	if($try ne $_){
		print "sorry - that is not right.\n\n";
		$errors++;
		redo;#错了之后重做
		
		
		}
	
	
	
	}print "you have completed the test,with $errors errors.\n";
foreach $key (keys(%ENV)){
		print "$key\n";}
print "Your login name is $ENV{'LOGNAME'}\n";
$pwd=$ENV{'PWD'};
print "The present working directory is $pwd", "\n";



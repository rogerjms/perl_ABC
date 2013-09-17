#mkdir "xiaoke",0755 or warn "$!";
#my ($name,$perm)=@ARGV;
#mkdir $name,oct($perm) or die;
my $tem_dir="ww";
#mkdir $tem_dir,0755 or die;
unlink glob "$tem_dir/* $tem_dir/.*";
rmdir $tem_dir;

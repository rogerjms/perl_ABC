$a=1;
$b=2;
foreach $key (keys %main::){
print "\$$key =>$main::{$key}\n";}
print ${$main::{'a'}};
package sep_test;
my $sep='';
sub set_sep{
	my $prev_sep=$sep;
	if(@_){
		$sep=$_[0]}
		return $prev_sep;
}
sub flip_words{
	my $line=$_[0];
	my @words=split($sep,$line);
	return print join($sep,reverse @words);
	}
	package main;
	$line="gui:xiao:ke";
	sep_test::set_sep(':');
	sep_test::flip_words($line);
	
	
	


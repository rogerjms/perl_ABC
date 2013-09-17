
my $library = 'sem_result1';
$fh = open_file($library);#获得文件句柄
open RR,">sem_result2";
while( $record = get_next_record($fh) ) {#if($record=~/^Sequence\"(.*?)\".*/g&&@a=($record=~/IPR.{6}/g)){ print $1,"\n";}

print RR $record,"\n";
}
exit;
sub open_file {
my($filename) = @_;
my $fh;
unless(open($fh, $filename)) {
print "Cannot open file $filename\n";
exit;
}
return $fh;
}
sub get_next_record {
my($fh) = @_;
my($offset);
my($record) = '';
$/ = "//\n";
$record = <$fh>;
$record =~ s/\n/\t/g;
$/ = $save_input_separator;
return $record;
}

@gbk = glob('lianxi2/*');	
for ($n = 0; $n <= @gbk; $n++){

	
open FAS, "$gbk[$n]";
open NEX,">$gbk[$n].nex";

while( $record = get_next_record("FAS") ){
 $i++;
 $record =~ s/[>|\s|\/\/]//g;
 if($record=~/(\w+\d+\w+\d+)(\S+)/){
 $count= length($2);
 $b=["\t",$1,"\t",$2,"\n"];
 }push(@c,$b);
  }
  
print NEX "#NEXUS\n";
print NEX "\n";
print NEX "\t","DIMENSIONS\tNCHAR=",$count,"\tntax=",$i,"\n";
print NEX "\tFORMAT DATATYPE = DNA GAP = - MISSING = ?\n";
print NEX "\tMATRIX";	

for($j=0;$j<@c;$j++){
	print NEX @{$c[$j]}; 
	}
print NEX "\n\n";
print NEX "END\n";
}
sub get_next_record {
my($fh) = @_;
my($offset);
my($record) = '';
my($save_input_separator) = $/;
$/ = "//\n";
$record = <$fh>;
$/ = $save_input_separator;
return $record;
}
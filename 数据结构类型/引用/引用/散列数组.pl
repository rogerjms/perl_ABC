my $petref = [   { "name"  => "Rover",
                   "type"  => "dog",
                   "owner" => "Mr. Jones",
                 },
                 { "name"  => "Sylvester",
                   "type"  => "cat",
                   "owner" => "Mrs. Black",
                 }
             ];

print "The first pet's name is $petref->[0]->{name}.\n";
print "Printing an array of hashes.\n";
for($i=0; $i<2; $i++){
	while(($key,$value)=each %{$petref->[$i]} ){
		print "$key -- $value\n";
	}
	print "\n";
}
print "Adding a hash to the array.\n";

push @{$petref},{ "owner"=>"Mrs. Crow", "name"=>"Tweety", 
                  "type"=>"bird" };

while(($key,$value)=each %{$petref->[2]}){
	print "$key -- $value\n";
}
%employees=( "Nightwatchman" => "Joe Blow",
             "Janitor" => "Teddy Plunger",
             "Clerk" => "Sally Olivetti",
           );

print "The Nightwatchman exists.\n" if exists 
		$employees{"Nightwatchman"};
print "The Clerk exists.\n" if exists $employees{"Clerk"};
print "The Boss does not exist.\n" if not exists $employees{"Boss"};


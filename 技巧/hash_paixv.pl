sub asc_sort_wins {
    $wins{$a} <=> $wins{$b};
}


 %wins = (
 	"Portland Panthers"   => 10,
 	"Sunnyvale Sluggers"  => 12,
 	"Chico Wildcats"      => 5,
 	"Stevensville Tigers" => 6,
 	"Lewiston Blazers"    => 11,
 	"Danville Terriors"   => 8,
 );
print "\n\tWins in Ascending Numeric Order:\n\n";
foreach $key (sort asc_sort_wins(keys(%wins))) {
	printf "\t% -20s%5d\n", $key, $wins{$key};
}


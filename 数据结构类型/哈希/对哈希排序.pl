%wins = (
    "Portland Panthers" => 10,
    "Sunnyvale Sluggers" => 12,
    "Chico Wildcats" => 5,
    "Stevensville Tigers" => 6,
    "Lewiston Blazers"   => 11,
    "Danville Terriors" => 8,
);
print "\n\tSort Teams in Ascending Order:\n\n";
foreach $key( sort(keys %wins)) {
   printf "\t% -20s%5d\n", $key, $wins{$key};
}

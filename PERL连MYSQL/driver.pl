use DBI;
my @drivers = DBI->available_drivers;
print join(", ", @drivers),"\n";     


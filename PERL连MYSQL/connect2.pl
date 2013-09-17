use DBI;
my $dbh=DBI->connect('DBI:mysql:ajax','root','448468678') or die "Can't connect";
my $sth=$dbh->prepare("SELECT * FROM example"); 
     		    
$sth->execute();
print "Contents of sunyang, the mysql database.\n\n";

while(my @row=$sth->fetchrow_array()){ # Get one row at a time
     print "name=$row[0]\n"; #Field one
     print "psw=$row[1]\n";    # Field two
     #print "losses=$row[2]\n\n";  # Field three
       }
print $sth->rows, " rows were retrieved.\n";

$sth->finish();
$dbh->disconnect();

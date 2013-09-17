use DBI;
use lib "C:\Users\Administrator\Desktop\DBD-mysql-4.019\DBD-mysql-4.019\lib\Bundle\DBD\mysql.pm";
$dbh=DBI->connect('DBI:mysql:sunyang','root','448468678') or die "Can't connect";
$sth=$dbh->prepare("SELECT * FROM user") 
  or die "Can't prepare sql statement" . DBI->errstr;
$sth->execute();
print qq(\n\tContents of "user" table\n);

$sth->dump_results();  # Display results of the execute
 
$sth->finish();
$dbh->disconnect();


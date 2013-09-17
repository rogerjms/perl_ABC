#!/bin/perl

# load module

use DBI;
use lib C:\Users\Administrator\Desktop\DBD-mysql-4.019\DBD-mysql-4.019\lib\Bundle\DBD\mysql.pm

# connect

my $dbh = DBI->connect("DBI:mysql:database=db2;host=localhost", "joe", "guessme", {'RaiseError' => 1});

# execute INSERT query

my $rows = $dbh->do("INSERT INTO users (id, username, country) VALUES (4, 'jay', 'CZ')");

print "$rows row(s) affected ";

# execute SELECT query

my $sth = $dbh->prepare("SELECT username, country FROM users");

$sth->execute();

# iterate through resultset

# print values

while(my $ref = $sth->fetchrow_hashref()) {

print "User: $ref-> ";

print "Country: $ref-> ";

print "---------- ";

}

# clean up

$dbh->disconnect();


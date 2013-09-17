use Net::Ping;    
$p = Net::Ping->new();
$host="192.168.96.234";    
print "$host is alive.\n" if $p->ping($host);    
$p->close();
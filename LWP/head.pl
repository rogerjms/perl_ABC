use strict;
use LWP::Simple;
foreach my $url (
'http://us.a1.yimg.com/us.yimg.com/i/ww/m5v9.gif',
'http://hooboy.no-such-host.int/',
'http://www.yahoo.com',
'http://www.ora.com/ask_tim/graphics/asktim_header_main.gif',
'http://www.guardian.co.uk/',
'http://www.pixunlimited.co.uk/siteheaders/Guardian.gif',
'http://192.168.96.234/bbs/',
) {
print "\n$url\n";
my ($type, $length, $mod) = head($url);
# so we don't even save the expires or server values!
unless (defined $type) {
print "Couldn't get $url\n";
next;
}
print "That $type document is ", $length || "???", " bytes long.\n";
if ($mod) {
my $ago = time( ) - $mod;
print "It was modified $ago seconds ago; that's about ",
int(.5 + $ago / (24 * 60 * 60)), " days ago, at ",
scalar(localtime($mod)), "!\n";
} else {
print "I don't know when it was last modified.\n";
}
}
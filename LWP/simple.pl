use strict;
use warnings;
use LWP::Simple;
my $url = 'http://www.booktv.org/schedule/';
my $file = 'booktv.html';
my $status = getstore($url, $file);
die "Error $status on $url" unless is_success($status);
open(IN, "<$file") || die "Can't open $file: $!";
while (<IN>) {
if (m/Gore\s+Vidal/) {
print "Look! Gore Vidal! $url\n";
last;
}
}
close(IN);
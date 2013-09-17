#!/usr/bin/perl -w
# Example 4-4   Calculating the reverse complement of a strand of DNA DNA反向互补序列

# The DNA反向互补序列
open TRANS ,$ARGV[0] or die "$!";
chomp(@dna=<TRANS>);
$DNA=join(",",@dna);

# Print the DNA onto the screen
print "Here is the starting DNA:\n\n";

print "$DNA\n\n";

$revcom = reverse $DNA;

# See the text for a discussion of tr///
$revcom =~ tr/ACGTacgt/TGCAtgca/;

# Print the reverse complement DNA onto the screen
print "Here is the reverse complement DNA:\n\n";

print "$revcom\n";

print "\nThis time it worked!\n\n";

exit;

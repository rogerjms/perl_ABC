#!/usr/bin/perl -w
# Example 4-3   Transcribing DNA into RNA �漰��������ѧ֪ʶ����

# The DNA
#$DNA = ARGV[0];
open TRANS ,$ARGV[0] or die "$!";
chomp(@dna=<TRANS>);
$DNA=join(",",@dna);
# Print the DNA onto the screen
print "Here is the starting DNA:\n\n";

print "$DNA\n\n";#������

# Transcribe the DNA to RNA by substituting all T's with U's.
$RNA = $DNA;#��DNA���и�ֵ��RNA

$RNA =~ s/T/U/g; #($RNA = $DNA) =~ s/T/U/g;

# Print the RNA onto the screen
print "Here is the result of transcribing the DNA to RNA:\n\n";

print "$RNA\n";

# Exit the program.
exit;
# ����ѧ�ϵĸ���Ҫ����
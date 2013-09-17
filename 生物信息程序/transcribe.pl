#!/usr/bin/perl -w
# Example 4-3   Transcribing DNA into RNA 涉及到了生物学知识背景

# The DNA
#$DNA = ARGV[0];
open TRANS ,$ARGV[0] or die "$!";
chomp(@dna=<TRANS>);
$DNA=join(",",@dna);
# Print the DNA onto the screen
print "Here is the starting DNA:\n\n";

print "$DNA\n\n";#空两行

# Transcribe the DNA to RNA by substituting all T's with U's.
$RNA = $DNA;#把DNA序列赋值给RNA

$RNA =~ s/T/U/g; #($RNA = $DNA) =~ s/T/U/g;

# Print the RNA onto the screen
print "Here is the result of transcribing the DNA to RNA:\n\n";

print "$RNA\n";

# Exit the program.
exit;
# 生物学上的概念要明白
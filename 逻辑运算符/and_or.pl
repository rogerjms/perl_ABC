#!/usr/bin/perl
# Short-circuit operators
$num1=50;
$num2=100;
$num3=0;

print $num1 && $num3, "\n";    # result is 0
print $num3 && $num1, "\n";    # result is 0
print $num1 && $num2, "\n";    # result is 100
print $num2 && $num1, "\n\n";  # result is 50

print $num1 || $num3, "\n";    # result is 50
print $num3 || $num1, "\n";    # result is 50
print $num1 || $num2, "\n";    # result is 50
print $num2 || $num1, "\n";    # result is 100


print "\nOutput using the word operators.\n\n";
print "\n$num1 and $num2: ",($num1 and $num2), "\n";
print "\n$num1 or $num3: ", ($num1 or $num3), "\n";
print "\n$num1 xor $num3: ",($num1 xor $num3), "\n";
print "\nnot $num3: ", not $num3;
print "\n";

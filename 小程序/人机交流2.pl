print "What is your age? ";
chomp($age=<STDIN>);

$price=($age > 60 ) ? 0 : 5.55;
printf "You will pay \$%.2f.\n", $price;
print "What was your grade? ";
$grade = <STDIN>;
print $grade > 60 ? "Passed.\n" : "Failed.\n";


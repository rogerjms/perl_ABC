# Precedence with word operators and short-circuit operators
$x=5;
$y=6;
$z=0;
$result=$x && $y && $z;       # Precedence of = lower than &&
print "Result: $result\n";

$result2 = $x and $y and $z;  # Precedence of = higher than and
print "Result: $result2\n";

$result3 = ( $x and $y and $z );
print "Result: $result3\n";


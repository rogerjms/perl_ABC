$i=<>;
$j=<>;
$k=<>;


sub min3 {
my($i, $j, $k) = @_;
my($tmp);
$tmp = ($i < $j ? $j : $i);
$tmp < $k ? $k : $tmp;
}
print min3($i,$j,$k);
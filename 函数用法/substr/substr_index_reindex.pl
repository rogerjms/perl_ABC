$line="Happy New Year";
print substr($line, 6, 3),"\n";      # Offset starts at zero
print index($line, "Year"),"\n";
print substr($line, index($line, "Year")),"\n";
substr($line, 0, 0)="Fred, ";#首部加一个元素
print $line,"\n";
substr($line, 0, 1)="Ethel";
print $line,"\n";
substr($line, -1, 1)="r to you!";
print $line,"\n";
$string="I'll eat a tomato tomorrow.\n";
print rindex($string, tom), "\n";


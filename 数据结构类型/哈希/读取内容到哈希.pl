# Assign input to a hash
$course_number=101;
print "What is the name of course 101?";
chomp($course{$course_number} = <STDIN>);
print %course, "\n";

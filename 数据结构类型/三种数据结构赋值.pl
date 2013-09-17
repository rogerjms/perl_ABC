# Scalar, array, and hash assignment
$salary=50000;                   # Scalar assignment
@months=('Mar', 'Apr', 'May');   # Array assignment
%states= (                       # Hash assignment
    'CA' => 'California',
	'ME' => 'Maine',
	'MT' => 'Montana',
	'NM' => 'New Mexico',
	     );
print "$salary\n";
print "@months\n";
print "$months[0], $months[1], $months[2]\n";
print "$states{'CA'}, $states{'NM'}\n";
print $x + 3, "\n";             # $x just came to life!
$name="born";
print "***$name***\n";          # $name is born!

# Double quotes
$num=5;
print "The number is $num.\n";
print "I need \$5.00.\n";
print "\t\tI can't help you.\n";

# Single quotes 
print 'I need $100.00.', "\n";
print 'The string literal, \t, is used to represent a tab.', "\n";
print 'She cried, "Help me!"', "\n";

# Using alternative quotes
print 'She cried, "I can\'t help you!"'," \n";   # Clumsy
print qq/She cried, "I can't help you!"  \n/;    # qq for double
                                                # quotes
print qq(I need $5.00\n);  # Really need single quotes 
                           # for a literal dollar sign to print
print q/I need $5.00\n/;   # What about backslash interpretation? 
print qq(I need \$5.00\n);  # Can escape the dollars sign
print qq/\n/, q/I need $5.00/," \n";
print q!I need $5.00!," \n";
print "The present working directory is ", 'pwd';
print qq/Today is /, qx/date/;
print "The hour is ", qx{date +%H}; #nice
$var="net";
print "${var}work\n";


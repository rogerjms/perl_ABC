# Getting only one character of input
print "Answer y or n   ";
$answer=getc;     # Gets one character from stdin
$restofit=<>;     # What remains in the input buffer is 
                  # assigned to $restofit
print "$answer\n";
print "The characters left in the input buffer were: 
         $restofit\n";


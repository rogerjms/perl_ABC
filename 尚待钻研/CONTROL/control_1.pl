use control qw(singlestr clean);
print"Please enter a word: ";
$input=<STDIN>;
print"You Entered: $input";
clean($input);
singlestr($input);
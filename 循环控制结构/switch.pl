use Switch; # Loads a Perl module

print "What is your favorite color? ";
chomp($color=<STDIN>);
switch("$color"){
 case "red"  { print "Red hot mama!\n"; }
 case "blue" { print "I got a feeling called the blues.\n"; }
 case "green" { print "How green my valley\n";}
 case "yellow" { print "In my yellow submarine";}
 else          { print "$color is not in our list.\n";}
}
 print "Execution continues here....\n";

#!/usr/bin/perl
# Initialization, test, and increment, decrement of 
# counters is done in one step.
for ($count=1, $beers=10, $remain=$beers, $where="on the shelf "; 
     $count <= $beers; $count++, $remain--)
   {
if ($remain == 1){
      print "$remain bottle of beer $where $where " ;
   }
else { 
      print "$remain bottles of beer $where $where.";
   }
   print " Take one down and pass it all around.\n";
   print "Now ", $beers - $count , " bottles of beer $where!\n";
   if ($count == 10 ){print "Party's over.\n";}
}

foreach $hour (1 .. 24){  # The range operator is used here 
  if ($hour > 0 && $hour < 12) {print "Good-morning.\n";}
  elsif ($hour == 12) {print "Happy Lunch.\n";}
  elsif ($hour > 12 && $hour < 17) {print "Good afternoon.\n";}
  else {print "Good-night.\n";}  
}

#!/usr/bin/perl
@colors=(red, green, blue, brown);
foreach (@colors) {
	print "$_ ";
	$_="YUCKY";
}
print "\n@colors\n";


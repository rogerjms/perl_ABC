$hour=(localtime)[2];
if ($hour >= 0 && $hour < 12){print "Good-morning!\n";}
elsif ($hour == 12){print "Lunch time.\n";}
elsif ($hour > 12 && $hour < 17) {print "Siesta time.\n";}
else {print "Goodnight. Sweet dreams.\n";}


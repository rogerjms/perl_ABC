use Date::Calc qw(Week_of_Year);
$year="2011";
$month="07";
$day="23";

my  ($week,$year) = Week_of_Year($year,$month,$day);
print $week;
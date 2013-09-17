sub desc_sort_subject {
    $b <=> $a;           # Numeric sort descending
}
sub asc_sort_subject{
    $a <=> $b;           # Numeric sort ascending
}


%courses = (
	"101" => "Intro to Computer Science",
	"221" => "Linguistics",
	"300" => "Astronomy",
	"102" => "Perl",
	"103" => "PHP",
	"200" => "Language arts",
);
print "\n\tCourses in Ascending Numeric Order:\n";
foreach $key (sort asc_sort_subject(keys(%courses))) {
	printf "\t%-5d%s\n", $key, $courses{"$key"};
}
print "\n\tCourses in Descending Numeric Order:\n";
foreach $key (sort desc_sort_subject(keys(%courses))) {
	printf "\t%-5d%s\n", $key, $courses{"$key"};
}
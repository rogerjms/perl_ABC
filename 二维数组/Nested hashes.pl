# Nested hashes
%students=	( "Math"    => { "Joe"  => 100,   "Joan" => 95 },
			"Science" => { "Bill" => 85,    "Dan"  => 76 } 
		);
print "On the math test Joan got ";
print qq/$students{Math}->{Joan}.\n/;
print "On the science test Bill got ";
print qq/$students{Science}->{Bill}.\n/;

# Anonymous arrays as keys in a hash
%grades=("Math"    => [ 90, 100, 94 ],
         "Science" => [ 77, 87, 86 ],
         "English" => [ 65, 76, 99, 100 ],
        );
print %grades, "\n";
print "The third math grade is: $grades{Math}->[2]\n";
print "All of the science grades are: @{$grades{Science}}\n";


# An array of hashes
@stores=( { "Boss" =>"Ari Goldberg",
            "Employees" => 24,
            "Registers" => 10,
            "Sales" => 15000.00,
          },
          { "Boss" =>"Ben Chien",
            "Employees" => 12,
            "Registers" => 5,
            "Sales" => 3500.00,
          },
);
print "The number of elements in the array: ",
	$#stores + 1, "\n";   # The number of the last subscript + 1

for($i=0; $i< $#stores + 1; $i++){
	print $stores[$i]->{"Boss"},"\n";   # Access an array element
	print $stores[$i]->{"Employees"},"\n";
	print $stores[$i]->{"Registers"},"\n";
	print $stores[$i]->{"Sales"},"\n";
	print "-" x 20 ,"\n";
}




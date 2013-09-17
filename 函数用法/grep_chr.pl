# Searching for patterns in a list
@list = (tomatoes, tomorrow, potatoes, phantom, Tommy);
$count = grep( /tom/i, @list);
@items= grep( /tom/i, @list);
print "Found items: @items\nNumber found: $count\n";

# Joining each elements of a list with colons
$name="Joe Blow";
$birth="11/12/86";
$address="10 Main St.";
print join(":", $name, $birth, $address ), "\n";


# Mapping a list to an expression
@list=(0x53,0x77,0x65,0x64,0x65,0x6e,012);
@words = map chr, @list;
print @words;
@n = (2, 4, 6, 8);
@n = map $_ * 2 + 6, @n;
print "@n\n";


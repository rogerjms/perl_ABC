# Splicing out elements of a list
@colors=("red", "green", "purple", "blue", "brown");
print "The original array is @colors\n";
@discarded = splice(@colors, 2, 2);
print "The elements removed after the splice are: @discarded.\n";
print "The spliced array is now @colors.\n";


# Splicing and replacing elements of a list
@colors=("red", "green", "purple", "blue", "brown");
print "The original array is @colors\n";
@lostcolors=splice(@colors, 2, 3, "yellow", "orange");
print "The removed items are @lostcolors\n";
print "The spliced array is now @colors\n";


# Splitting a scalar on whitespace and creating a list
$line="a b c d e";
@letter=split('  ',$line);
print "The first letter is $letter[0]\n";
print "The second letter is $letter[1]\n";



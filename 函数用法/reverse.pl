@list = (90,89,78,100,87);
$str="Hello, world";
print "Original array: @list\n";   
print "Original string: $str\n";   
@revlist = reverse(@list);
$revstr = reverse($str);
print "Reversed array is: @revlist\n";
print "Reversed string is: $revstr\n";

$newstring = reverse(@list);  print "List reversed, context string: $newstring\n";  


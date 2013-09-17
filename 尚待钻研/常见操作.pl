$text = 'This is two
  lines of text
  '; 
print $text;
$text1 = "This is two
  lines of text
  "; 
  print "\n",$text;
  $a = "be";
  $a .= "witched"; 
  print $a;
  $val=26;
  $result = (++$val, $val + 5); 
  print $result;
  @s=(1..100);
  print @s;
  $string = join("**", "this", "is","a", "string"); 
  print $string,"\n";
  @list = ("words","and");
    $string1 = join("::", @list, "colons"); 
     print $string1,"\n";
    @arry=(1..10) ;
    $count = 1;
    while ($count <= @array) {
    print ("element $count: $array[$count-1]\n");
    $count++;
    }

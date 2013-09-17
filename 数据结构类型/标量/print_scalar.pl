# Initializing scalars and printing their values
$num = 5;
$friend = "John Smith";
$money = 125.75;
$now = localtime();        # localtime() is a Perl function
$month="Jan";
print "$num\n";
print "$friend\n";
print "I need \$$money.\n";    # Protecting our money
print qq/$friend gave me \$$money.\n/;
print qq/The time is $now\n/;
print "The month is ${month}uary.\n";    # Curly braces shield
                                         # the variable
print "The month is $month" . "uary.\n"; # Concatenate

$name="";
undef $name;

print "OK \n" if defined $name;#与是否被赋值 两码事，
$_ = "Donald Duck";
print;   # The value of $_ is printed
#**************
#@name=("Guy", "Tom", "Dan",  "Roy");
#@list=(2..10);
#@grades=(100, 90, 65, 96, 40, 75);
#@items=($a, $b, $c);
#@empty=();
#$size=@items;
#@mammals = qw/dogs cats cows/;
#@fruit = qw(apples pears peaches);
#@digits=(0 .. 10);                
#@letters=( 'A' .. 'Z' );          
#@alpha=( 'A' .. 'Z', 'a' .. 'z' );
#@n=( -5 .. 20 );                  
##*********

# Populating an array and printing its values                    
@names=('John', 'Joe', 'Jake');    # @names=qw/John Joe Jake/;   
print @names, "\n";  # prints without the separator              
print "Hi $names[0], $names[1], and $names[2]!\n";               
$number=@names;      # The scalar is assigned the number         
                     # of elements in the array                  
print "There are $number elements in the \@names array.\n";      
print "The last element of the array is $names[$number - 1].\n"; 
print "The last element of the array is $names[$#names].\n";     
                     # Remember, the array index starts at zero!!
@fruit = qw(apples pears peaches plums);                         
print "The first element of the \@fruit array  is $fruit[0];     
	   the second element is $fruit[1].\n";                        
print "Starting at the end of the array; @fruit[-1, -3]\n";    #数组求逆！！！
  
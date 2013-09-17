$bytes=pack("c4", 80,101,114, 108, 012);  # 5 Ascii characters
print "$bytes\n";
$string=pack("A3A3", "hey","you");  # ASCII string, space padded
print "$string";
#pack TEMPLATE,LIST 

#Takes a LIST of values and converts it into a string using the rules given by the TEMPLATE. The resulting string is the concatenation of the converted values. Typically, each converted value looks like its machine-level representation. For example, on 32-bit machines an integer may be represented by a sequence of 4 bytes, which will in Perl be presented as a string that's 4 characters long.

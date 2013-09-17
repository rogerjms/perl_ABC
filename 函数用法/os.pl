open (MY,"ipconfig -all | ")or die;
#
while(<MY>){print;}
print $^0;
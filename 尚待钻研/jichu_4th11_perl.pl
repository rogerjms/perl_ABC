$varible='abcd';
$varible1=q{abcd};
$varible2=(abcd);

print $varible.$varible1.$varible2;
@arry=('a','b','c','d',);
print "\n",@arry;
print "\n@arry";
print "\n",$arry[0];
$m==1;
print "\n",$arry[$m];#nononononono!!!!
%hash=('a'=>'qq',
       'b'=>'ww',
       'c'=>'ee',
       'd'=>'rr',
      );
print %hash;
print "\n","%hash";#  error!
print "\n",$hash{a};
print "\n",$hash{'ww'};#error!
@s= keys %hash;
print @s;
print "keys %hash";#error!
foreach (%hash){
	print "\n",$_,"=>",$hash{$_};#  how to list the elements of a hash !!!!
	}
	@example[0,1,2]=@hash{'a','b','d',};# amazing!!!!understand????
	print '\n',"@example";#error!
	print "\n","@example";
	name(4);#how to change to a newline?
	 sub name{
		my $a=shift;
		my $b;
		$b=$a*2;
		return  print $b;
		}

	$an_ref=sub {
		my $a=shift;
		my $b;
		$b=$a*2;
		return  print $b;
		};

 &$an_ref(4);
 #print &$an_ref(4);#what is diferrenence with last line?sequence is impotrant!
 name1(4,5);
 sub name1{
 	my $a=$_[0];
 	my $b=$_[1];
 	return print $a*$b;  #there are three ways to pass arguments in perl!
 	}
 #*******************************************reference**************;
 $p='guixiaoke';
 @l=qw(ball pen cake lady);
 $p_ref=\$p;
 $i==1;
 print "\n",$p_ref;
 print "\n",$$p_ref;# explain them ?
 $l_ref=\@l;
 print "\n",$l_ref;
 print "\n",$$l_ref[$i];# 中括号里不能用参数吗？？
 print "\n",$$l_ref[2];
 print "\n",$$l_ref[3];
 print "\n","@$l_ref";
 $hash=\%hash ;
 print "\n",$hash;
 print "\n",%$hash;
 print "\n",$$hash{a};#good! 最前面的符号有这个值决定！
 $no1=qw(111 222 333);
 $no2=qw(444 555 666);
 $no3=qw(777 888 999);
 #$no1_ref=\$no1;
 #$no2_ref=\$no2;
 #$no3_ref=\$no3;
 
 $no_ref=[$no1,$no2,$no3];
 print @$no_ref; #对表的引用
$lpArray  =  ["1","2","A","B",(4 .. 10),[12 .. 20]];#标点符号！！
 print  @{$lpArray->[4]};
 
 
 
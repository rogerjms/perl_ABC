# Without the g option
while(<DATA>){
	print if s/Tom/Christian/;  # First occurrence of Tom on each 
	                            # line is replaced with Christian
}
__DATA__
Tom Dave Dan Tom
Betty Tom Henry Tom
Igor Norma Tom Tom


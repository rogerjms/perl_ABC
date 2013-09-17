# Array slices                                               
@names=('Tom', 'Dick', 'Harry', 'Pete' );                    
@pal=@names[1,2,3];  # slice -- @names[1..3] also O.K.       
print "@pal\n\n";                                            
                                                             
($friend[0], $friend[1], $friend[2])=@names;    # Array slice
print "@friend\n";   

# Array slices                                                                    
@colors=('red','green','yellow','orange');           
($c[0], $c[1],$c[3], $c[5])=@colors;  # The slice    
print "**********\n";                                
print @colors,"\n";  # Prints entire array, but does 
                     # not separate elements quoted  
print "@colors,\n";  # Prints the entire array with  
                     # elements separated            
print "**********\n";                                
print $c[0],"\n";   # red                            
print $c[1],"\n";   # green                          
print $c[2],"\n";   # undefined                      
print $c[3],"\n";   # yellow                         
print $c[4],"\n";   # undefined                      
print $c[5],"\n";    # orange                        
print "**********\n" ;                               
print "The size of the \@c array is ", $#c + 1,".\n";
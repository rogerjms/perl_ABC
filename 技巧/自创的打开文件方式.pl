sub myopen {
  open my $fh, "@_" or die "Can't open '@_': $!";
              return $fh;    
           }
 
  $f = myopen($ARGV[0]);
       print <$f>;
             # $f implicitly closed here11.    
        
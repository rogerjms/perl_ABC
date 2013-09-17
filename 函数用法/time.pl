my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
        #print "$sec $min $hour,$mday,$mon,$year,$wday,$yday,$isdst \n";

        my $now_time = ($year+1900)."-".($mon+1)."-".$mday." ".$hour.":".$min.":".$sec;
         #print $now_time,"\n";
    $now= localtime;
    print $now;
    
        
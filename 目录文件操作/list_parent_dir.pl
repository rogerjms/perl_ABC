opendir(DIR, "..") || die "Can't open: $!\n";   
                    # Open parent directory
@parentfiles=readdir(DIR);  
                    # Gets a list of the directory contents
closedir(DIR);      # Closes the  filehandle
foreach $file ( @parentfiles )  
                    # Prints each element of the array
   { print "$file\n";}



#!/usr/bin/perl
$file=perl.test;

print "File is readable\n" if -r  $file;
print "File is writeable\n" if -w  $file;
print "File is executable\n" if -x  $file;
print "File is a regular file\n" if -f  $file;
print "File is a directory\n" if -d $file;
print "File is text file\n" if -T $file;
printf "File was last modified %f days ago.\n", -M $file;
print "File has been accessed in the last 12 hours.\n" if -M <= 12;

print "File has read, write, and execute set.\n" 
		if -r $file && -w _ && -x _;
stat("afile");  # stat another file
print "File is a set user id program.\n" if  -u _;  
                # underscore evaluates to last file stat'ed
print "File is zero size.\n" if -z _;
open(FOO, "| tr '[a-z]' '[A-Z]'");
print FOO "hello there\n";
close FOO;   # If you don't close FOO, the output may be delayed

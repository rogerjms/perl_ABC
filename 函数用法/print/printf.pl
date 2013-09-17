my @items=qw(asd qwe zxc );
my $format="the items are:\n".("%10s\n"x@items);
printf $format,@items;
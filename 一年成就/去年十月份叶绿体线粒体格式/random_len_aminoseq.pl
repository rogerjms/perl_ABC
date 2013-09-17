#!/usr/bin/perl -w
use strict;
my $random_aa_seq;
my $seq;
$random_aa_seq=make_random_AA(100);
open (AA,">random_aa_seq.txt")or die "cannot do it\n";
print AA $random_aa_seq;
exit;
# make random aa sequence
sub make_random_AA {
   my($length) = @_;
   for (my $i=0 ; $i < $length ; ++$i) {
      $seq .= randomamino( );
}
     return $seq;
}
sub randomamino {
my(@aa) =qw(A C D E F G H I K L M N P Q R S T V W Y );
return randomelement(@aa);
}
sub randomelement {
my(@array) = @_;
return $array[rand @array];
}



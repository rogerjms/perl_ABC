 my $s = "The black cat climbed the green tree";
 print  substr $s, 4, 5;       # black
 my $middle = substr $s, 4, -11;     # black cat climbed the
 my $end    = substr $s, 14;         # climbed the green tree
 my $tail   = substr $s, -4;         # tree
 my $z      = substr $s, -4, -1;      # tr
 
 
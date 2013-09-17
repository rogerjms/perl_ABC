use strict;
  use Algorithm::Viterbi;
  use Data::Dumper;

  my $observations = [
    [ 'work', 'rainy' ],
    [ 'work', 'sunny' ],
    [ 'walk', 'sunny' ],
    [ 'walk', 'rainy' ],
    [ 'shop', 'rainy' ],
    [ 'work', 'rainy' ],
  ];

  my $v = Algorithm::Viterbi->new(start_state => '###');
  $v->train($observations);

  print Dumper($v);

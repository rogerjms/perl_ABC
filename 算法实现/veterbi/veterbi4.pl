use Algorithm::Viterbi;
my $emission = {
    'shop' => {
		'Sunny' => '0.3',
		'Rainy' => '0.4'
	      },
    'swim' => {
		'Sunny' => '0.1'
	      },
    'walk' => {
		'Sunny' => '0.5',
		'Rainy' => '0.1'
	      },
    'clean' => {
		 'Sunny' => '0.1',
		 'Rainy' => '0.5'
	       }
  };

  my $start = { 'Rainy'=> 0.6, 'Sunny'=> 0.4 };

  my $v = Algorithm::Viterbi->new();
  $v->emission($emission);
  $v->start($start);
  $f=$v->get_emission('shop', 'Rainy'); # $e = 0.4
  print $f;
  

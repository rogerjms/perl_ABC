use strict;
  use gxk::Vi;
  use Data::Dumper;

    
  my $observations = [ 'walk', 'shop', 'clean','walk','clean','walk', 'shop', 'clean','walk','walk' ];
   my $start = { 'Rainy'=> 0.6, 'Sunny'=> 0.4 };
   my $transition = {
      'Rainy' => {'Rainy'=> 0.7, 'Sunny'=> 0.3},
      'Sunny' => {'Rainy'=> 0.4, 'Sunny'=> 0.6},
      };

  my $emission = {
    'shop' => {
      'Sunny' => '0.3',
      'Rainy' => '0.4',
    },

    'walk' => {
      'Sunny' => '0.6',
      'Rainy' => '0.1'
    },
    'clean' => {
      'Sunny' => '0.1',
      'Rainy' => '0.5'
      }
  };

  my $v = Vi->new();
  $v->emission($emission);
  $v->transition($transition);
  $v->start($start);

  print Dumper ($v->forward_viterbi($observations));
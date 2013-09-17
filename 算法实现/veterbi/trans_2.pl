
my $training_data = [
    [ 'work', 'rainy' ],
    [ 'work', 'sunny' ],
    [ 'walk', 'sunny' ],
    [ 'walk', 'rainy' ],
    [ 'shop', 'rainy' ],
    [ 'work', 'rainy' ],
  ];
  my $ep = {};#发散佚名哈希
  my $tp = {};#转移佚名哈希
  my $sp = {};#起始佚名哈希

  foreach my $o(@$training_data){#由于可以把训练数据看成一个数组，每一个元素代表，观察和隐藏状态如[ 'work', 'rainy' ],
    my ($a, $t) = @$o;#前者为观察状态，后者为隐藏
    $ep->{$a}{$t}++;#在某一观察状态下，隐藏发生的次数，存放到匿名哈希
    $tp->{$pt}{$t}++;
    $pt = $t;#重新改回pt
    $sp->{$t}++;#记录各个隐藏状态的个数
  }

  #emission
  foreach my $a(keys %$ep){
    foreach my $t(keys %{$ep->{$a}}){
      $ep->{$a}{$t} /= $sp->{$t};#把个数改成概率了
    }
  }  

  #transition
  foreach my $pt(keys %$tp){
    foreach my $t(keys %{$tp->{$pt}}){
      $tp->{$pt}{$t} /= $sp->{$t};
    }
  }

  #start
  foreach my $t(keys %$sp){
    $sp->{$t} /= @$training_data;
  }

  #$self->start($sp);
  #$self->emission($ep);
  #$self->transition($tp);

print $sp, $ep, $tp;




sub forward_viterbi
{
  my ($self, $observation) = @_;#传入观察序列

  my $T = { };#声明一个匿名哈希
  foreach my $state (@{$self->{states}}) {#这个状态上一步算过了，系统状态集合，rainy,sunny
    ##               prob.                   V. path   V. prob.
    $T->{$state} = [ $self->{start}{$state}, [$state], $self->{start}{$state} ]; 
  }                   #起始总概率               所处的状态即路径  维特比概率，由于是刚开始，与总概率相等

  foreach my $output (@$observation) {#对于每个观察状态
    my $U = { };#生命匿名哈希
    foreach my $next_state (@{$self->{states}}) {
      my $total = 0;
      my $argmax = [ ];
      my $valmax = 0;
      foreach my $state (@{$self->{states}}) {
	my ($prob, $v_path, $v_prob) = @{$T->{$state}};#我觉得这是初始时的状态，在这相当于赋初值了

	my $e = $self->get_emission($output, $state);#观察状态与隐藏状态
	my $t = $self->get_transition($state, $next_state);#隐藏状态之间

	my $p = $e * $t;
	$prob *= $p;
	$v_prob *= $p;
	$total += $prob;

	if ($v_prob > $valmax) {
	  $argmax = [ @$v_path, $next_state ];#所以哪怕只有一个观察状态，他也会给出两个
	  $valmax = $v_prob;
	}
      }
      $U->{$next_state} = [ $total, $argmax, $valmax ];
    }
    $T = $U;
  }

  ## apply sum/max to the final states
  my $total = 0;
  my $argmax = [];
  my $valmax = 0;
  foreach my $state (@{$self->{states}}) {
    my ($prob, $v_path, $v_prob) = @{$T->{$state}};
    $total += $prob;
    if ($v_prob > $valmax) {
      $argmax = $v_path;
      $valmax = $v_prob;
    }
  }
  return ($total, $argmax, $valmax);
}

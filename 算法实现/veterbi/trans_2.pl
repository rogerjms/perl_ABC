
my $training_data = [
    [ 'work', 'rainy' ],
    [ 'work', 'sunny' ],
    [ 'walk', 'sunny' ],
    [ 'walk', 'rainy' ],
    [ 'shop', 'rainy' ],
    [ 'work', 'rainy' ],
  ];
  my $ep = {};#��ɢ������ϣ
  my $tp = {};#ת��������ϣ
  my $sp = {};#��ʼ������ϣ

  foreach my $o(@$training_data){#���ڿ��԰�ѵ�����ݿ���һ�����飬ÿһ��Ԫ�ش����۲������״̬��[ 'work', 'rainy' ],
    my ($a, $t) = @$o;#ǰ��Ϊ�۲�״̬������Ϊ����
    $ep->{$a}{$t}++;#��ĳһ�۲�״̬�£����ط����Ĵ�������ŵ�������ϣ
    $tp->{$pt}{$t}++;
    $pt = $t;#���¸Ļ�pt
    $sp->{$t}++;#��¼��������״̬�ĸ���
  }

  #emission
  foreach my $a(keys %$ep){
    foreach my $t(keys %{$ep->{$a}}){
      $ep->{$a}{$t} /= $sp->{$t};#�Ѹ����ĳɸ�����
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
  my ($self, $observation) = @_;#����۲�����

  my $T = { };#����һ��������ϣ
  foreach my $state (@{$self->{states}}) {#���״̬��һ������ˣ�ϵͳ״̬���ϣ�rainy,sunny
    ##               prob.                   V. path   V. prob.
    $T->{$state} = [ $self->{start}{$state}, [$state], $self->{start}{$state} ]; 
  }                   #��ʼ�ܸ���               ������״̬��·��  ά�رȸ��ʣ������Ǹտ�ʼ�����ܸ������

  foreach my $output (@$observation) {#����ÿ���۲�״̬
    my $U = { };#����������ϣ
    foreach my $next_state (@{$self->{states}}) {
      my $total = 0;
      my $argmax = [ ];
      my $valmax = 0;
      foreach my $state (@{$self->{states}}) {
	my ($prob, $v_path, $v_prob) = @{$T->{$state}};#�Ҿ������ǳ�ʼʱ��״̬�������൱�ڸ���ֵ��

	my $e = $self->get_emission($output, $state);#�۲�״̬������״̬
	my $t = $self->get_transition($state, $next_state);#����״̬֮��

	my $p = $e * $t;
	$prob *= $p;
	$v_prob *= $p;
	$total += $prob;

	if ($v_prob > $valmax) {
	  $argmax = [ @$v_path, $next_state ];#��������ֻ��һ���۲�״̬����Ҳ���������
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

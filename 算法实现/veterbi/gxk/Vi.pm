package Vi;
use strict;
use warnings;
sub new
{
  my $class = shift; #ȡ����
  my $self = {@_};#����
  bless $self, $class;#�������������

  $self->{unknown_transition_prob} = 0 if (!defined($self->{unknown_transition_prob}));#��ת�Ƹ���û�и���Ĭ��Ϊ0
  $self->{start_state} = '$' if (!defined($self->{start_state}));#���û����ʼ״̬Ĭ��$

  return $self;
}#��֮NEW������캯������$self��ôһ����������϶���Ҫ���壬��ķ��棬���߽г�Ա����

sub train
{
  my ($self, $training_data) = @_;#����ѵ������

  my $ep = {};#��ɢ������ϣ
  my $tp = {};#ת��������ϣ
  my $sp = {};#��ʼ������ϣ

  my $pt = $self->{start_state};#�ɹ��췽���õ���ʼ״̬

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

  $self->start($sp);
  $self->emission($ep);
  $self->transition($tp);

  return ($sp, $ep, $tp);
}#ѵ���ɹ�
sub start
{
  my $self = shift;
  if (@_){
    ($self->{start}) = @_;
    @{$self->{states}} = keys %{$self->{start}};#��һ������ˣ����ϵͳ�ĳ�ʼ״̬
  }
  return $self->{start};
}#������ʱȽϼ�
sub emission
{
  my $self = shift;
  ($self->{emission}) = @_ if (@_);
  return $self->{emission};
}#Ҳ����
sub transition
{
  my $self = shift;
  ($self->{transition}) = @_ if (@_);
  return $self->{transition};
}#��
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
	my ($prob, $v_path, $v_prob) = @{$T->{$state}};#

	my $e = $self->get_emission($output, $state);#�۲�״̬������״̬
	my $t = $self->get_transition($state, $next_state);#����״̬֮��

	my $p = $e * $t;
	$prob *= $p;
	$v_prob *= $p;
	$total += $prob;

	if ($v_prob > $valmax) {
	  $argmax = [ @$v_path, $next_state ];
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
sub get_emission
{
  my ($self, $output, $state) = @_;

  my $e = 0;
  if (defined($self->{emission}{$output})){
    if (defined($self->{emission}{$output}{$state})){
      $e = $self->{emission}{$output}{$state};
    }
    else {
      #output exists, but not for this state
      $e = 0;
    }
  }
  else {
    if (defined($self->{unknown_emission_prob})){
      $e = $self->{unknown_emission_prob};
    }
    else {
      $e = $self->{start}{$state};
    }
  }
  return $e;
}
sub get_transition
{
  my ($self, $state, $next_state) = @_;
  
  my $t = defined($self->{transition}{$state}{$next_state}) 
    ? $self->{transition}{$state}{$next_state} 
    : $self->{unknown_transition_prob};

  return $t;
}
1;
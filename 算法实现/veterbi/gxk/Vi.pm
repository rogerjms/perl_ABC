package Vi;
use strict;
use warnings;
sub new
{
  my $class = shift; #取类名
  my $self = {@_};#对象
  bless $self, $class;#对象属于这个类

  $self->{unknown_transition_prob} = 0 if (!defined($self->{unknown_transition_prob}));#若转移概率没有给出默认为0
  $self->{start_state} = '$' if (!defined($self->{start_state}));#如果没有起始状态默认$

  return $self;
}#总之NEW这个构造函数返回$self这么一个对象，下面肯定还要定义，类的方面，或者叫成员方法

sub train
{
  my ($self, $training_data) = @_;#传入训练数据

  my $ep = {};#发散佚名哈希
  my $tp = {};#转移佚名哈希
  my $sp = {};#起始佚名哈希

  my $pt = $self->{start_state};#由构造方法得到起始状态

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

  $self->start($sp);
  $self->emission($ep);
  $self->transition($tp);

  return ($sp, $ep, $tp);
}#训练成功
sub start
{
  my $self = shift;
  if (@_){
    ($self->{start}) = @_;
    @{$self->{states}} = keys %{$self->{start}};#这一步求出了，这个系统的初始状态
  }
  return $self->{start};
}#这个概率比较简单
sub emission
{
  my $self = shift;
  ($self->{emission}) = @_ if (@_);
  return $self->{emission};
}#也不难
sub transition
{
  my $self = shift;
  ($self->{transition}) = @_ if (@_);
  return $self->{transition};
}#简单
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
	my ($prob, $v_path, $v_prob) = @{$T->{$state}};#

	my $e = $self->get_emission($output, $state);#观察状态与隐藏状态
	my $t = $self->get_transition($state, $next_state);#隐藏状态之间

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
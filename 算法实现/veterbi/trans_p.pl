


sub train #看看如何训练
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



sub train #�������ѵ��
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
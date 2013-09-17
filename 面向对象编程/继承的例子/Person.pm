package Person ;
 sub new { 
 my $self = {}; 
 shift; 
 my ($name, $age) = @_; 
 $self->{name} = $name; 
 $self->{age} = $age; 
 bless ($self); 
 return $self; 
 } 

 sub change_name { 
 my $self = shift; 
 my $name = shift; 
 $self->{name} = $name; 
 } 

 1;
package Person ;
=head1 NAME 

pod::Person - Compute Viterbi path and probability 
=head1 SYNOPSIS

 package Employee; 
 use Person;
 @ISA = qw (Person); 

 sub new { 
 shift; 
 my ($name, $age, $salary) = @_; 
 my $self = Person->new ($name, $age); #从person中继承来的
 $self->{salary} = $salary; 
 bless ($self); 
 return $self; 
 } 

 sub change_salary { 
 my $self = shift; 
 my $new_salary = shift; 
 $self->{salary} = $new_salary; 
 } 

 my $object_employee = Employee->new ( "Tonny", 28, 10000 ); 
 print "Name : " . $object_employee->{name} . ", Age : " . $object_employee->{age} . 
 ", Salary : " . $object_employee->{salary} . ". \n"; 
 $object_employee->change_name ("Tommy"); 
 $object_employee->change_salary (13000); 

 print "Name : " . $object_employee->{name} . ", Age : " . $object_employee->{age} . 
 ", Salary : " . $object_employee->{salary} . ". \n";
=head1 DESCRIPTION

 这是我的第一个说明文档
 
=cut
use strict;
use warnings;

=head1 METHODS

=over 20
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
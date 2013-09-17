package Gene1;#A Gene1 object consists of a gene name, an organism represented by genus and species, a
              #chromosome, and a reference to a protein structure in the PDB:
use strict;
use warnings;
use Carp;
sub new {
my ($class, %arg) = @_;
return bless {
_name => $arg{name} || croak("no name"),
_organism => $arg{organism} || croak("no organism"),
_chromosome => $arg{chromosome} || "????",
_pdbref => $arg{pdbref} || "????",
}, $class;
}
sub name { $_[0] -> {_name} }
sub organism { $_[0] -> {_organism} }
sub chromosome { $_[0] -> {_chromosome}}
sub pdbref { $_[0] -> {_pdbref} }
1;
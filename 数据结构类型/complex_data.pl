$gene = [
# hash of basic information about the gene name, discoverer,
# discovery date and laboratory.Ã÷°×Âð£¿£¿£¿
{
name => 'antiaging',
reference => [ 'G. Mendel', '1865'],
laboratory => [ 'Dept. of Genetics', 'Cornell University', 'USA']
},
# scalar giving priority
'high',
# array of local work history
['Jim', 'Rose', 'Eamon', 'Joe']
];
print "Name is ", ${$gene->[0]}{'name'}, "\n";
print "Priority is ", $gene->[1], "\n";
print "Research center is ", ${${$gene->[0]}{'laboratory'}}[1], "\n";
print "These individuals worked on the gene: ", "@{$gene->[2]}", "\n";
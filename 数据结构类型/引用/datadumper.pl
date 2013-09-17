use Data::Dumper;
%relatedgenes = ( );
$relatedgenes{'stromelysin'} = [
'C.elegans',
'Arabidopsis thaliana'
];
$relatedgenes{'obesity'} = [
'Drosophila',
'Mus musculus'
];
push( @{$relatedgenes{'stromelysin'}}, 'Canis' );
print Dumper(\%relatedgenes);
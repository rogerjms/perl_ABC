$DNA="a att sscc dde eff gg";
$DNA =~ s/\s//g;
@DNA = split( '', $DNA );
print @DNA;

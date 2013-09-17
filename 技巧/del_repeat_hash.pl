#!d:\perl\perl.exe
open HASH ,"operon_id_include" or die "$!\n";
@hash=<HASH>;
 my %seen;
 foreach(@hash){
 	$seen{$_}=1;
 	}
 @uni=keys %seen;
 open HA,">new_operon_id_include" or die "$!\n";
 print HA "@uni\n";
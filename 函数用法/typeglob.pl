#!/usr/bin/perl
$colors="rainbow";
@colors=("red", "green", "yellow" );
&printit(*colors);            # Which color is this?
sub printit{
	local(*whichone)=@_;      # Must use local, not my with globs
	print *whichone, "\n";       # The package is main
	$whichone="Prism of Light";  # Alias for the scalar
	$whichone[0]="PURPLE";       # Alias for the array
}
print "Out of subroutine.\n";
print "\$colors is $colors.\n";
print "\@colors is @colors.\n";


#usr/bin/perl -w
use strict;
my @ss;
my @aa;
my @dd;
open (CI,"chl")or die "can not\n";
open (BB,">result.txt");
 @aa=<CI>;
 @ss=grep(/ORGANISM|SOURCE|GENBANK /,@aa );
 foreach (@ss){
 	if($_=~/^ORGANISM/){
 		$_=~s/^ORGANISM[\s]+(.*)/$1/;
 		# print BB "$_";
 	}elsif($_=~/^SOURCE/){
 	  $_=~s/^SOURCE[\s]+[\w]+[\s]+([\w]+).*/$1/;
 		# print BB "$_";
 	}elsif($_=~/GENBANK/){
 		$_=~s/^GENBANK[\s]+(.*)/$1/;
 		print BB "$_";
 		}
 	}
open (B,"result.txt");
open(C,">good");
@dd= <B>;
chomp @dd;
for(my $i=0;$i<scalar @dd;$i+=3) {
print C "$dd[$i]\t$dd[$i+1]\t$dd[$i+2]\n";
}
 	
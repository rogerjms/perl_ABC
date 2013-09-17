#!user/bin/perl -w

open(FH2,'+>>./DEMO_.txt')||die;

my $seq='ATCGATCGATCGATCGATCG$';

my @matrix;
my @index;
push @matrix,$seq;
push @index,0;
#print FH2 "$seq\n";
my $l=length($seq);
for(my $i=1;$i<$l;$i++)
{
	$seq=substr($seq,1).substr($seq,0,1);
	push @matrix,$seq;
	push @index,$i;
#	print FH2 $seq."\n";
}

sub rule {
        if($matrix[$a] eq $matrix[$b]){return $a<=>$b}
	return $matrix[$a] cmp $matrix[$b];
    }

my @fl = sort rule @index;
my @f = sort @matrix;
for(my $i=0;$i<$l;$i++)
{
	print FH2 "$f[$i]\t$fl[$i]\n";
}

close(FH2);


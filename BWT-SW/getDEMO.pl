#!user/bin/perl -w

open(FH2,'+>>./DEMO.txt')||die;

my $seq='ATCGATCGATCGATCGATCG$';#

my @matrix;
push @matrix,$seq;#把$seq放到数组末尾
#print FH2 "$seq\n";
my $l=length($seq)-1;#？
for(my $i=0;$i<$l;$i++)
{
	$seq=substr($seq,1).substr($seq,0,1);
	push @matrix,$seq;
#	print FH2 $seq."\n";
}

my @sortedmatrix = sort @matrix;
my $c=-1;
my @cs;
my @ls;
foreach my $sq(@sortedmatrix){push @cs,++$c;push @ls,substr($sq,$l);#print FH2 "$sq\t$c\n";
			      }
sub rule {
        if($ls[$a] eq $ls[$b]){return $a<=>$b}
	return $ls[$a] cmp $ls[$b];
    }

my @fl = sort rule @cs;
my @f = sort @ls;
for(my $i=0;$i<=$l;$i++)
{
	print FH2 "$f[$i]\t$fl[$i]\n";
}

close(FH2);


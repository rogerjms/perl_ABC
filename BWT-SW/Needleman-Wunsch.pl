# Needleman-Wunsch  Algorithm 

my $seq1="ATCGATCGATCGATCGATCG";
my $seq2="TGATCGAATCGATGGATC";

# scoring scheme
my $MATCH    =  1; # +1 for letters that match
my $MISMATCH = -1; # -1 for letters that mismatch
my $GAP      = -1; # -1 for any gap

# initialization
my @matrix;
$matrix[0][0]{score}   = 0;
$matrix[0][0]{pointer} = "none";
$matrix[0][0]{color} = "";
for(my $j = 1; $j <= length($seq1); $j++) {
    $matrix[0][$j]{score}   = $GAP * $j;
    $matrix[0][$j]{pointer} = "left";
	$matrix[0][$j]{color} = "";
}
for (my $i = 1; $i <= length($seq2); $i++) {
    $matrix[$i][0]{score}   = $GAP * $i;
    $matrix[$i][0]{pointer} = "up";
	$matrix[$i][0]{color} = "";
}

# fill
for(my $i = 1; $i <= length($seq2); $i++) {
    for(my $j = 1; $j <= length($seq1); $j++) {
	$matrix[$i][$j]{color} = "";
        my ($diagonal_score, $left_score, $up_score);

        # calculate match score
        my $letter1 = substr($seq1, $j-1, 1);
        my $letter2 = substr($seq2, $i-1, 1);                            
        if ($letter1 eq $letter2) {
            $diagonal_score = $matrix[$i-1][$j-1]{score} + $MATCH;
        }
        else {
            $diagonal_score = $matrix[$i-1][$j-1]{score} + $MISMATCH;
        }

        # calculate gap scores
        $up_score   = $matrix[$i-1][$j]{score} + $GAP;
        $left_score = $matrix[$i][$j-1]{score} + $GAP;

        # choose best score
        if ($diagonal_score >= $up_score) {
            if ($diagonal_score >= $left_score) {
                $matrix[$i][$j]{score}   = $diagonal_score;
                $matrix[$i][$j]{pointer} = "diagonal";
            }
        else {
                $matrix[$i][$j]{score}   = $left_score;
                $matrix[$i][$j]{pointer} = "left";
            }
        } else {
            if ($up_score >= $left_score) {
                $matrix[$i][$j]{score}   = $up_score;
                $matrix[$i][$j]{pointer} = "up";
            }
            else {
                $matrix[$i][$j]{score}   = $left_score;
                $matrix[$i][$j]{pointer} = "left";
            }
        }
    }
}

# trace-back

my $align1 = "";
my $align2 = "";

# start at last cell of matrix
my $j = length($seq1);
my $i = length($seq2);

while (1) {
    last if $matrix[$i][$j]{pointer} eq "none"; # ends at first cell of matrix

    if ($matrix[$i][$j]{pointer} eq "diagonal") {
	$matrix[$i][$j]{color} = "1";
        $align1 .= substr($seq1, $j-1, 1);
        $align2 .= substr($seq2, $i-1, 1);
        $i--;
        $j--;
    }
    elsif ($matrix[$i][$j]{pointer} eq "left") {
	$matrix[$i][$j]{color} = "2";
        $align1 .= substr($seq1, $j-1, 1);
        $align2 .= "-";
        $j--;
    }
    elsif ($matrix[$i][$j]{pointer} eq "up") {
	$matrix[$i][$j]{color} = "3";
        $align1 .= "-";
        $align2 .= substr($seq2, $i-1, 1);
        $i--;
    }    
}

open(HTML,">>nw.htm");
print HTML "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=GBK\" /><table border=\"2\"><tr><th> </th><th>S1</th><th>".join("</th><th>",split(//,$seq1))."</th></tr>";
my $l_j=length($seq1);
my $l_i=length($seq2);
print HTML "<tr><th>S2</th><td>0 <sup>o</sup></td>";
for(my $j=1;$j<=$l_j;$j++){
		my $pointer="";
		if ($matrix[0][$j]{pointer} eq "diagonal"){$pointer="<sup>¨I</sup>";}
		elsif ($matrix[0][$j]{pointer} eq "left"){$pointer="<sup>¡û</sup>";}
		elsif ($matrix[0][$j]{pointer} eq "up"){$pointer="<sup>¡ü</sup>";}
		my $color='';
		if($matrix[0][$j]{color} eq "1"){$color=" bgcolor=\"red\""}
		if($matrix[0][$j]{color} eq "2"){$color=" bgcolor=\"yellow\""}
		if($matrix[0][$j]{color} eq "3"){$color=" bgcolor=\"#00ff00\""}
		print HTML "<td".$color.">".$matrix[0][$j]{score}.$pointer."</td>";}
print HTML "</tr>";
for(my $i=1;$i<=$l_i;$i++)
{
    print HTML "<tr><th>".substr($seq2, $i-1, 1)."</th>";
	for(my $j=0;$j<=$l_j;$j++)
	{
		my $pointer="";
		if ($matrix[$i][$j]{pointer} eq "diagonal"){$pointer="<sup>¨I</sup>";}
		elsif ($matrix[$i][$j]{pointer} eq "left"){$pointer="<sup>¡û</sup>";}
		elsif ($matrix[$i][$j]{pointer} eq "up"){$pointer="<sup>¡ü</sup>";}
		my $color='';
		if($matrix[$i][$j]{color} eq "1"){$color=" bgcolor=\"red\""}
		if($matrix[$i][$j]{color} eq "2"){$color=" bgcolor=\"yellow\""}
		if($matrix[$i][$j]{color} eq "3"){$color=" bgcolor=\"#00ff00\""}
		print HTML "<td".$color.">".$matrix[$i][$j]{score}.$pointer."</td>";
	}
    print HTML "</tr>";
}
print HTML "</table>";

$align1 = reverse $align1;
$align2 = reverse $align2;

my @al1=split(//,$align1);
my @al2=split(//,$align2);
print HTML "<p><table><tr><th>S1:</th><td>".join("</td><td>",@al1)."</td></tr><tr><td> </td>";
my $l=@al1;
for(my $i=0;$i<$l;$i++){if($al1[$i] eq $al2[$i]){print HTML "<td>|</td>"}else{print HTML "<td> </td>"}}
print HTML "</tr><tr><th>S2:</th><td>".join("</td><td>",@al2)."</td></tr></table>";

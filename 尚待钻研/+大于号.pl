#!/usr/bin/perl
# Open for writing first, then reading
print "\n\n";
open(FH, "+>joker") || die;  
print FH "This line is written to joker.\n";
seek(FH,0,0);         # Go to the beginning of the file,�ı��¾��λ��
while(<FH>) {
    print;            # Reads from joker; the line is in $_
}


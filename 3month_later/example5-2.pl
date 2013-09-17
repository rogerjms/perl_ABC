#!/usr/bin/perl -w
# Example 5-2   Reading protein sequence data from a file, take 4

# The filename of the file containing the protein sequence data
$proteinfilename = 'NM_021964fragment.pep';

# First we have to "open" the file, and in case the
# open fails, print an error message and exit the program.
unless ( open(PROTEINFILE, $proteinfilename) ) {

    print "Could not open file $proteinfilename!\n";
    exit;#这都是有作用的,如果打不开就自动退出
}
#让人想起来了java里的try...catch,这是为了在异常情况下有个说法！！！
# Read the protein sequence data from the file in a "while" loop,
# printing each line as it is read.
while( $protein = <PROTEINFILE> ) {#读大数据时候比直接读到一个数据里有速度优势

    print "  ######  Here is the next line of the file:\n";

    print $protein;
}

# Close the file.
close PROTEINFILE;

exit;
